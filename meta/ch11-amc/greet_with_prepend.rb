class MyClass
  def greet
    'hello'
  end
end

MyClass.new.greet

# You can't wrap functionality around 'greet' by simply including a module that
# overrides it
module EnthusiasticGreetings
  def greet
    "Hey, #{super}!"
  end
end

class MyClass
  # In this case, including 'EnthusiasticGreetings' places it higher in the 
  # ancestry chain and it will not override the 'greet' method in 'MyClass'
  include EnthusiasticGreetings
end

p MyClass.new.greet # => 'hello'

# In order to fix this, 'Module#prepend' inserts the prepended module below
# the includer in the ancestry chain, allowing an override

class MyClass
  prepend EnthusiasticGreetings
end

p MyClass.new.greet # => 'Hey, hello!'
