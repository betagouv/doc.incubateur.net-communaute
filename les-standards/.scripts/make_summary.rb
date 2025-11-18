# frozen_string_literal: true

# We use a hand-maintained SUMMARY.md file for doc.incubateur.net,
# which means that whenever a standard changes updating the index is a
# bit of a pain so use this small script to automatically produce the
# relevant part of the summary.

require 'i18n'
require_relative './standards_exporter'

exporter = StandardsExporter.new

puts "* [✅ Les standards](les-standards/README-doc-incubateur-net.md)"

exporter
  .export_hash["standards"]
  .group_by { |standard| standard["category"] }
  .sort_by { |category, standards| I18n.transliterate(category.downcase) }
  .each do |category, standards|
    puts "  * [✅ #{category.humanize.capitalize.gsub("-", " ")}](les-standards/#{category}/README.md)"

    standards.each do |standard|
      puts "    * [#{standard['title']}](les-standards/#{standard['id']}.md)"
    end
  end
