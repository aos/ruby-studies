#!/usr/bin/env ruby

require 'tempfile'

class Notes
  
  FILENAME = File.expand_path('~/.daily_log')

  def log(txt)
    time = Time.now
    zone = time.zone
    time = time.to_s.gsub(/-*/, "(#{zone})")
    File.open(FILENAME, "a+") do |f|
      f.write
    end
  end

  def edit
    editor = ENV['EDITOR'] || 'vi'
    f = Tempfile.new('note')

    system(editor, f.path)
  end
end

n = Notes.new.edit
