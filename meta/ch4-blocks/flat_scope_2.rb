# Flattening the scope
my_var = 'Success'

# We can create a new class by using 'Class.new' to bypass 
# the 'class' scope gate
MyClass = Class.new do
  # 'my_var' printable here!
  puts "#{my_var} in the class definition!"

  # 'my_var' also printable here!
  define_method :my_method do
    "#{my_var} in the method"
  end
end

MyClass.new.my_method

require_relative '../test/assertions'
assert_equals 'Success in the method', MyClass.new.my_method
