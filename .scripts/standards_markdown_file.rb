# frozen_string_literal: true

require 'yaml'
require 'active_support/core_ext/string'

# This reads a standards Markdown file and is able to export it into a
# YAML structure.
class StandardsMarkdownFile
  attr_reader :file_path, :content, :yml_data

  def initialize(file_path)
    @file_path = file_path
    @content = File.read(file_path)
  end

  def to_yaml
    reset_data!
      .then { parse_content }
      .then { @yml_data }
  end

  def reset_data!
    @yml_data = {}
  end

  def parse_content
    yml_data['id'] = File.basename(file_path, '.md')

    extract_category
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

  def extract_category
    yml_data['category'] = File.dirname(file_path)
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
