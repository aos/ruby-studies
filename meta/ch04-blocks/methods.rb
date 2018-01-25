# Methods are also callable objects
class MyClass
  def initialize(value)
    @x = value
  end
  def my_method
    @x
  end
end

object = MyClass.new(1)

# Invoking Kernel#method, you get the method itself as a Method object
# which can be called later with Method#call
m = object.method :my_method
m.call # => 1
