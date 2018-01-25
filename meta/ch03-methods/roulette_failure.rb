class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"
  end
end

number_of = Roulette.new
puts number_of.bob

# This will cause a stack overflow as the 'number' variable is defined in the
# '3.times' block and falls out of scope after the block, causing Ruby to 
# assume that it is a method defined on self -- and because we re-defined
# 'method_missing', we repeat the process on 'number' -- ad-infinitum
