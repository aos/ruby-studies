#!/usr/bin/env ruby

# Ruby (1.9) does not automatically include current directory on the require
# lookup path.
# $:.unshift '.' takes current folder and adds it to the statr of the array
# of places your ruby app will look for files to require
$:.unshift '.'

require 'launcher'

# Script to invoke launcher using command-line args
def help
  print "
  You must pass in the path to the file to launch.

  Usage: #{__FILE__} target_file
  "
end

unless ARGV.size > 0
  help
  exit
end

app_map = {
  "html" => "chrome",
  "rb" => "nvim",
  "jpg" => "paintbrush"
}

l = Launcher.new app_map
target = ARGV.join ' '
l.run target
