# DSL - Domain-Specific Language
def event(description)
  puts "Alert: #{description}" if yield
end
load 'events.rb'
