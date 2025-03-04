# frozen_string_literal: true

require 'yaml'

EXPORT_FILENAME = 'standards-beta.yml'

def questions_to_yaml
  all_data = {}

  Dir.glob('*/*.md').each do |file|
    next if file =~ /README|TEMPLATE_QUESTION/

    content = File.read(file)
    yml_data = {}

    # Extract frontmatter
    if content =~ /\A---\n(.+?)\n---\n/m
      frontmatter = YAML.safe_load($1)
      yml_data.merge!(frontmatter) if frontmatter.is_a?(Hash)
    end
    if content =~ /^# (.+)$/
      yml_data['title'] = $1.strip
    end

    # Extract description
    if content =~ /## Description\n\n(.+?)\n\n##/m
      yml_data['description'] = $1.strip
    end

    # Extract criteria
    if content =~ /## Critères\n\n(.+?)\n\n##/m
      yml_data['criteria'] = $1.strip.split("\n").map { |c| c.gsub(/^- \[ \] /, '').strip }
    end

    # Extract resources
    if content =~ /## Ressources\n\n(.+?)$/m
      yml_data['resources'] = $1.strip.split("\n").map { |r| r.gsub(/^- /, '').strip }
    end

    category = File.dirname(file)
    all_data[category] ||= []
    yml_data['id'] = File.basename(file, '.md')
    all_data[category] << yml_data
  end

  all_data.to_yaml
end

def compile_all_to_yml
  File.write(EXPORT_FILENAME, questions_to_yaml)

  puts "Compiled all Markdown files into #{EXPORT_FILENAME}"
end

# Run the compilation
compile_all_to_yml
