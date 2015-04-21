#!/usr/bin/env ruby

require 'fileutils'
require 'date'
require 'find'
require 'zlib'

LOG_DIR  = "#{ENV['HOME']}/.tmuxlog"
LOG_FILE = "#{LOG_DIR}/compress-tmux-log.log"

Dir.mkdir(LOG_DIR) unless FileTest.directory?(LOG_DIR)

def print_date(msg)
  time = DateTime.now.strftime("%Y/%m/%d-%H:%M:%S")

  open(LOG_FILE, "a") do |f|
    f.puts "#{time} #{msg}"
  end
end

print_date "START"

Find.find(LOG_DIR) do |fpath|
  next unless FileTest.file?(fpath)
  next unless /\d{2}\.log$/ =~ fpath
  next unless system("/usr/sbin/lsof #{fpath} >/dev/null 2>&1")

  Zlib::GzipWriter.open("#{fpath}.gz") do |f_name|
    f_name.puts(open(fpath).read)
  end
  FileUtils.rm(fpath)
  open(LOG_FILE, "w") { |f| f.puts(fpath) }
end

print_date "END"

