require 'active_support/core_ext/string'

def rename_file_based_on_header(file_path, fix: false)
  # Read the first line of the file to get the header
  header = File.open(file_path, &:readline).strip

  # Extract the text after the '# ' to get the title
  title = header.sub(/^#\s*/, '')

  # Parameterize the title to create a filename-friendly string
  new_filename = title.parameterize

  # Construct the new file path
  new_file_path = File.join(File.dirname(file_path), "#{new_filename}.md")

  if File.basename(file_path) != "#{new_filename}.md"
    if fix
      # Rename the file
      File.rename(file_path, new_file_path)
      puts "File renamed to: #{new_file_path}"
    else
      puts "File needs renaming: #{file_path} -> #{new_file_path}"
      return false
    end
  end
  true
end

# Determine mode based on the first argument
mode = ARGV.delete_at(0)

# Process each file provided in ARGV
exit_status = ARGV.map do |file_path|
  rename_file_based_on_header(file_path, fix: mode == '--fix')
end.all?

exit(1) unless exit_status
