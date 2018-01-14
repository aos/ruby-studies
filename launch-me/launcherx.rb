#!/usr/bin/env ruby

# Extended launcher
require 'launcher'

class Launcher
  def handler(file)
    get_handler(file) || build_handler(file)
  end

  def build_handler(file)
    handler = Class.new
    application = select_app file
    eval "def handler.run(file, args=nil)
      system '#{application} \#{file} \#{args}'
    end"
    handler
  end

  def get_handler(file)
    begin
      here = File.expand_path( File.dirname __FILE__ )
      ftype = file_type file
      require "#{here}/handlers/#{ftype}"
      Object.const_get(ftype.capitalize).new
    rescue
      nil
    end
  end

  # Execute the given file using the associated app
  def run(file, args = nil)
    handler(file).run file, args
  end
end
