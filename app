#!/usr/bin/env ruby

require 'erb'
require 'yaml'
require 'open3'

app    = "./app"
cmd    = ARGV[0] || 'default'
config = YAML.load(ERB.new(File.read('.app.yml.erb')).result())
script = config.find { |e| e['name'] == cmd }['script']

stdout, stderr, status = Open3.capture3(script)

if status.success?
  puts stdout
  exit 0
else
  $stderr.puts stderr
  exit 1
end