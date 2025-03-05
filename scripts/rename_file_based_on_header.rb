require 'active_support/core_ext/string'

def rename_file_based_on_header(file_path)
  # Read the first line of the file to get the header
  header = File.open(file_path, &:readline).strip

  # Extract the text after the '# ' to get the title
  title = header.sub(/^#\s*/, '')

  # Parameterize the title to create a filename-friendly string
  new_filename = title.parameterize

  # Construct the new file path
  new_file_path = File.join(File.dirname(file_path), "#{new_filename}.md")

  # Rename the file
  File.rename(file_path, new_file_path)

  puts "File renamed to: #{new_file_path}"
end

# Process each file provided in ARGV
ARGV.each do |file_path|
  rename_file_based_on_header(file_path)
end
