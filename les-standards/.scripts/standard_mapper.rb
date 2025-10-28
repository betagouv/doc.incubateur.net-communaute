# frozen_string_literal: true

require_relative 'standard_parser'

class StandardMapper
  EXPORT_KEYS = %w[
    id
    title
    category
    description
    criteria
    resources
    last_modified_on
  ]

  def initialize(filepath)
    @filepath = filepath
    @parser = StandardParser.new(File.read(filepath))
  end

  def to_hash
    EXPORT_KEYS.each_with_object({}) do |key, result|
      result[key] = send(key)
    end
  end

  def to_yaml
    to_hash.to_yaml
  end

  private

  def id
    File.basename(@filepath, '.md')
  end

  def title
    @parser.title
  end

  def category
    File.dirname(@filepath)
  end

  def description
    @parser.content_for_section("Description")
  end

  def criteria
    @parser.list_section_to_array("Critères").map { |text| { "label" => text } }
  end

  def resources
    @parser.list_section_to_array("Ressources")
  end

  def last_modified_on
    File.mtime(@filepath).to_date
  end
end
