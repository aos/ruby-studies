module Greetings
  def greet
    'hello'
  end
end

class MyClass
  include Greetings
end

p MyClass.new.greet

# Redefine 'greet' in a separate module and include that module instead
module EnthusiasticGreetings
  include Greetings

  def greet
    "Hey, #{super}"
  end
end

class MyClass
  include EnthusiasticGreetings
end

p MyClass.ancestors[0..2] # => [MyClass, EnthusiasticGreetings, Greetings]
p MyClass.new.greet # => "Hey, hello!"

