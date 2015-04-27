#!/usr/bin/env ruby

# see: https://github.com/fnichol/macosx-iterm2-settings

require 'optparse'

PLIST_PATH = "#{ENV['HOME']}/Library/Preferences/com.googlecode.iterm2.plist"
REPO_PATH  = "./assets/com.googlecode.iterm2.plist"

puts "#{PLIST_PATH} not found." unless File.exist?(PLIST_PATH)
puts "#{REPO_PATH} not found."  unless File.exist?(REPO_PATH)

def run_cmd(arg)
  if arg.has_key?(:r)
    `plutil -convert binary1 -o "#{PLIST_PATH}" "#{REPO_PATH}"`
  else
    `plutil -convert xml1 -o - "#{PLIST_PATH}" | xmllint --format - > "#{REPO_PATH}"`
  end
end

opts = {}
opt  = OptionParser.new
opt.on("-r", "--restore", "Restore #{PLIST_PATH}") { |v| opts[:r] = v }
opt.on("-b", "--backup",  "Backup  #{PLIST_PATH}") { |v| opts[:b] = v }
opt.parse!(ARGV)

if opts[:r] || opts[:b]
  run_cmd(opts)
else
  puts opt.help
  exit 1
end

