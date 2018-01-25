require 'pry'

# Only works for pry 0.9.12 or greater?
pry = Pry.new

pry.memory_size = 101
puts pry.memory_size
puts pry.quiet = false 

pry.refresh(:memory_size => 99, :quiet => true)
puts pry.memory_size
puts pry.quiet?

# Pry.refresh works by sending attributes:
def refresh(options={})
  defaults = {}
  attributes = [ :input, :output, :commands, :print, :quiet,
                 :exception_handler, :hooks, :custom_completions,
                 :prompt, :memory_size, :extra_sticky_locals ]

  attributes.each do |attribute|
    defaults[attribute] = Pry.send attribute
  end
  #...
  defaults.merge!(options).each do |key, value|
    send("#{key}=", value) if respond_to?("#{key}=")
  end

  true
end
