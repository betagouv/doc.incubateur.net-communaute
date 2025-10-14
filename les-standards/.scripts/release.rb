#!/usr/bin/env ruby

require_relative './standards_exporter'

exporter = StandardsExporter.new

target_filename = "standards-beta-v#{exporter.current_version}.yml"

File.write(target_filename, exporter.to_yaml)
