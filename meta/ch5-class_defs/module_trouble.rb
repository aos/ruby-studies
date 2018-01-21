module MyModule
  def my_method; 'hello'; end
end

# When a class includes a module, it gets the module's
# instance methods -- not the class methods

# Define class methods by mixing them into the class's 
# singleton class
# This is known as Class Extension
class MyClass
  class << self
    include MyModule
  end
end

p MyClass.my_method
