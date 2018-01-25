# Taboo: cannot use the 'class' keyword

# Implement this:
# class MyClass < Array
#   def my_method
#     'Hello!'
#   end
# end

# 'Class.new' accepts an argument -- the superclass of the new class
MyClass = Class.new(Array) do
  def my_method
    'Hello!'
  end
end

p MyClass.ancestors
