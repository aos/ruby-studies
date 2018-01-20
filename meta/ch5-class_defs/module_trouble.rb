module MyModule
  def my_method; 'hello'; end
end

# When a class includes a module, it gets the module's
# instance methods -- not the class methods

# In order to include MyModule's methods as class methods,
# open the singleton class and include MyModule there but 
# also make those methods in MyModule instance methods

# This is known as Class Extension
class MyClass
  class << self
    include MyModule
  end
end

p MyClass.my_method
