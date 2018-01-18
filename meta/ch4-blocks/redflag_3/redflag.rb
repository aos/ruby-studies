def event(description, &block)
  # Method now converts block to Proc
  @events << {:description => description, :condition => block}
end

def setup(&block)

end

@events = []
load 'events.rb'
@events.each do |e|
  setup
  e.condition.call 
end
