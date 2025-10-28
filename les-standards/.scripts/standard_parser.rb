# frozen_string_literal: true

require 'kramdown'
require 'active_support/core_ext/enumerable'
require 'active_support/core_ext/object'

# This leverages Kramdown's parser and can be used to check our
# sections without doing some crazy grepping all over the
# place. Usage: StandardParser.new(standard_text_content), see the
# Kramdown::Element documentation for the API.
class StandardParser < Kramdown::Document
  def title
    headers_at_level(1)
      .sole
      .options[:raw_text]
  end

  def sections
    headers_at_level(2)
      .map { |e| e.options[:raw_text] }
  end

  def expected_filename
    title.parameterize.concat('.md')
  end

  def content_for_section(section_title)
    tree_to_markdown(tree_for_section(section_title))
  end

  def tree_to_markdown(nodes)
    Kramdown::Document.new("").yield_self do |doc|
      doc.root.children = nodes

      doc.to_kramdown
    end
  end

  def list_section_to_array(name)
    begin
      tree_for_section(name)
        .select { |node| node.type == :ul }
        .sole
        .children
        .select { |node| node.type == :li }
        .map { |li| tree_to_markdown(li.children) }
        .map(&:chomp)
    rescue Enumerable::SoleItemExpectedError => e
      []
    end
  end

  def without_blank_lines(tree)
    yield(tree.reject { |e| e.type == :blank }) if block_given?
  end

  # rubocop:disable Metrics/MethodLength
  def tree_for_section(section_title)
    content = []
    capturing = false

    root.children.each do |element|
      if looking_at?(element, :header, { raw_text: section_title })
        capturing = true
        next
      end

      break if capturing && looking_at?(element, :header, { level: 2 })

      content << element if capturing
    end

    content
  end
  # rubocop:enable Metrics/MethodLength

  private

  def all_headers
    root.children.select { |e| e.type == :header }
  end

  def headers_at_level(level)
    all_headers.select { |e| e.options[:level] == level }
  end

  def looking_at?(element, type, options)
    element.type == type && options.all? { |key, val| element.options[key] == val }
  end
end
