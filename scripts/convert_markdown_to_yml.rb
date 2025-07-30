# frozen_string_literal: true

require 'yaml'
require 'active_support/core_ext/string'

class StandardsMarkdownFile
  attr_reader :file_path, :content, :yml_data

  def initialize(file_path)
    @file_path = file_path
    @content = File.read(file_path)
    @yml_data = {}
    parse_content
  end

  def parse_content
    yml_data['id'] = File.basename(file_path, '.md')

    extract_frontmatter
    extract_title
    extract_description
    extract_criteria
    extract_resources
    extract_last_modified_timestamp
  end

  def extract_frontmatter
    if content =~ /\A---\n(.+?)\n---\n/m
      frontmatter = YAML.safe_load($1)
      yml_data.merge!(frontmatter) if frontmatter.is_a?(Hash)
    end
  end

  def extract_title
    if content =~ /^# (.+)$/
      yml_data['title'] = $1.strip
    end
  end

  def extract_description
    yml_data['description'] = extract_section('Description')
  end

  def extract_criteria
    yml_data['criteria'] = extract_section('Critères')
  end

  def extract_resources
    yml_data['resources'] = extract_section('Ressources')
  end

  def extract_section(section_name)
    section_regex = /## #{section_name}\n\n(.*?)(?=\n\n## |\z)/mi

    return unless content =~ section_regex


    section_text = $1.strip

    case section_name.downcase
    when 'critères'
      section_text.split(/^- /).reject(&:empty?).map { |item| { 'label' => item.strip } }
    when 'ressources'
      section_text.split(/^- /).reject(&:empty?).map(&:strip).map(&:squish)
    else
      section_text
    end
  end

  def extract_last_modified_timestamp
    yml_data['last_modified_on'] = File.mtime(file_path).to_date
  end
end

class MarkdownToYAMLConverter
  EXPORT_FILENAME = 'standards-beta.yml'

  def self.compile_all_to_yml
    new.compile_all_to_yml
  end

  def compile_all_to_yml
    all_data = []

    Dir.glob('*/*.md').each do |file|
      next if file =~ /README|TEMPLATE_QUESTION/

      markdown_file = StandardsMarkdownFile.new(file)
      category = File.dirname(file)
      question_data = markdown_file.yml_data
      question_data['category'] = category
      all_data << question_data
    end

    File.write(EXPORT_FILENAME, all_data.to_yaml)
    puts "Compiled all Markdown files into #{EXPORT_FILENAME}"
  end
end

# Run the compilation
MarkdownToYAMLConverter.compile_all_to_yml
