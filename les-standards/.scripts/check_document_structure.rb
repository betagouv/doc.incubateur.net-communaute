#!/usr/bin/env ruby

# frozen_string_literal: true

require 'active_support/core_ext/enumerable'

# StructureChecker checks our rules headers
class StructureChecker
  REQUIRED_HEADERS = %w[Description Critères Ressources].freeze

  class << self
    def call(filename)
      new.call(filename)
    end
  end

  def call(filename)
    load_file(filename)
      .then do |content|
      validate_top_header(content)
      validate_required_headers(content)
    end
  end

  class StructureError < StandardError; end

  class MissingTopHeaderError < StructureError
    def initialize(msg = 'il manque un titre de niveau 1')
      super(msg)
    end
  end

  class TooManyTopHeadersError < StructureError
    attr_reader :count

    def initialize(count)
      super("un seul titre de niveau 1 doit être présent, #{count} ont été trouvés")
    end
  end

  class MissingHeader < StructureError; end

  private

  def load_file(filename)
    raise "Impossible de trouver le fichier `#{filename}'" unless File.exist?(filename)

    File.read(filename)
  end

  def validate_top_header(str)
    top_header = headers(str, 1)

    raise MissingTopHeaderError if top_header.none?
    raise(TooManyTopHeadersError, top_header.count) if top_header.many?
  end

  def validate_required_headers(str)
    second_headers = headers(str, 2)

    REQUIRED_HEADERS
      .map { |name| "## #{name}" }
      .each do |header|
      raise(MissingHeader, "Il manque un titre de niveau 2 : #{header}") if second_headers.grep(header).empty?
    end
  end

  def headers(str, level)
    str
      .lines
      .filter { |line| line.start_with?("#{'#' * level} ") }
      .map(&:strip)
  end
end
