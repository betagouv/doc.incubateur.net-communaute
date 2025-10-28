# frozen_string_literal: true

require 'active_support/core_ext/string'

require_relative './standard_markdown_file'

def rename_file_based_on_header(filepath)
  parser = StandardMarkdownFile.new(File.read(filepath))

  if File.basename(filepath) != parser.expected_filename
    File.rename(filepath, expected_filename)
    puts "File renamed to: #{new_file_path}"
  end

  true
end

success = ARGV.all? do |filepath|
  puts "Fixing standard title for #{filepath}"

  rename_file_based_on_header(filepath)
end

exit(1) unless success
