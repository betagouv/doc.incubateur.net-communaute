# frozen_string_literal: true

require 'active_support/core_ext/string'

require_relative './standard_parser.rb'

def rename_file_based_on_header(filepath)
  parser = StandardParser.new(File.read(filepath))

  expected_filename = parser.expected_filename

  if File.basename(filepath) != expected_filename
    File.rename(filepath, expected_filename)
    puts "File renamed to: #{expected_filename}"
  end

  true
end

success = ARGV.all? do |filepath|
  puts "Fixing standard title for #{filepath}"

  rename_file_based_on_header(filepath)
end

exit(1) unless success
