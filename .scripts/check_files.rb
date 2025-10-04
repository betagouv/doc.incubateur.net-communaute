#!/usr/bin/env ruby

# frozen_string_literal: true

require_relative './check_document_structure'

ARGV.each do |file_path|
  print "[lint-custom] vérification de la structure de #{file_path}..."
  StructureChecker.call(file_path)
  puts 'OK.'
end
