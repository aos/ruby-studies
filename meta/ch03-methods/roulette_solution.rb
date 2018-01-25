class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    # Fall back to BasicObject 'method_missing'
    super unless %w[Aos Phin Louis].include? person 
    # Use correct scope for variable
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"
  end
end

roll = Roulette.new
puts roll.aos
puts roll.phin
puts roll.louis
