def event(description, &block)
  # Method now converts block to Proc object
  @events << {:description => description, :condition => block}
end

def setup(&block)
  @setups << block
end

@events = []
@setups = []
load 'events.rb'

@events.each do |e|
  @setups.each { |s| s.call }
  puts "ALERT: #{e[:description]}" if e[:condition].call
end
