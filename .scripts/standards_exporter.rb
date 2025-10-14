# frozen_string_literal: true

require 'json'
require 'yaml'

require_relative './standards_markdown_file'

# This returns structured data out of all our Markdown files. This can
# then be used to export as YAML, JSON, XML, however you wanna hurt
# yourself
class StandardsExporter
  delegate :to_yaml, :to_json, to: :export_hash

  def export_hash
    standards = all_markdown_files
                .map { |file| StandardsMarkdownFile.new(file) }
                .map(&:to_yaml)

    {
      'version' => current_version,
      'standards' => standards
    }
  end

  def current_version
    File.read('./VERSION').chomp
  end

  private

  def all_markdown_files
    Dir
      .glob('*/*.md')
      .reject { |file| file =~ /README/ }
  end
end
