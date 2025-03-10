# frozen_string_literal: true

require 'yaml'

class MarkdownFile
  attr_reader :file_path, :content, :yml_data

  def initialize(file_path)
    @file_path = file_path
    @content = File.read(file_path)
    @yml_data = {}
    parse_content
  end

  def parse_content
    extract_frontmatter
    extract_title
    extract_description
    extract_criteria
    extract_resources
    yml_data['id'] = File.basename(file_path, '.md')
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
    if content =~ /## Description\n\n(.+?)\n\n##/m
      yml_data['description'] = $1.strip
    end
  end

  def extract_criteria
    if content =~ /## Critères\n\n(.+?)\n\n##/m
      yml_data['criteria'] = $1.strip.split("\n").map { |c| c.gsub(/^- \[ \] /, '').strip }
    end
  end

  def extract_resources
    if content =~ /## Ressources\n\n(.+?)$/m
      yml_data['resources'] = $1.strip.split("\n").map { |r| r.gsub(/^- /, '').strip }
    end
  end
end

class MarkdownToYAMLConverter
  EXPORT_FILENAME = 'standards-beta.yml'

  def self.compile_all_to_yml
    new.compile_all_to_yml
  end

  def compile_all_to_yml
    all_data = {}

    Dir.glob('*/*.md').each do |file|
      next if file =~ /README|TEMPLATE_QUESTION/

      markdown_file = MarkdownFile.new(file)
      category = File.dirname(file)
      all_data[category] ||= []
      all_data[category] << markdown_file.yml_data
    end

    File.write(EXPORT_FILENAME, all_data.to_yaml)
    puts "Compiled all Markdown files into #{EXPORT_FILENAME}"
  end
end

# Run the compilation
MarkdownToYAMLConverter.compile_all_to_yml
