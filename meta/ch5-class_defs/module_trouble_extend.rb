# Extensions are common enough that there is an alternative
# Object#extend

module MyModule
  def my_method; 'hello'; end
end

obj = Object.new
obj.extend MyModule
obj.my_method # => 'hello'

class MyClass
  extend MyModule
end

MyClass.my_method # => 'hello'

# Object#extend is a shortcut that includes a module in the
# receiver's singleton class
