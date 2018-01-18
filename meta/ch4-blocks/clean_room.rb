# Clean Room - an object used just to evaluate blocks inside it

class CleanRoom
  def current_temperature
    #...
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if current_temperature < 20
    # TODO: wear a jacket
  end
end

# The best 'Clean Room' is the BasicObject tho
