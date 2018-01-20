# Defining an attribute on an instance
class MyClass
  attr_accessor :a
end

obj = MyClass.new
obj.a = 2
obj.a # => 2

# Defining an attribute on a class
class MyClass
  # Using the singleton class
  # This works because attributes are just a pair of methods
  # Defining the methods on a singleton class makes them
  # class methods
  class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works!'
MyClass.c # => 'It works!'
