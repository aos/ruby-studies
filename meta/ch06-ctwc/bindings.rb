# 'Binding' is a whole scope packaged as an object
# Create a 'Binding' to capture local scope and carry it around, then execute
# the code in the scope with 'eval'

class MyClass
  def my_method
    @x = 1
    binding
  end
end

p b = MyClass.new.my_method

# Evaluate code in the captured scope by passing the 'Binding' as an additional
# argument to 'eval'
p eval "@x", b # => 1

# Access top-level scope from anywhere using 'TOPLEVEL_BINDING'
class AnotherClass
  def my_method
    eval "self", TOPLEVEL_BINDING
  end
end

p AnotherClass.new.my_method # => main

# 'eval' arguments
# 'eval(statements, @binding, file, line)'

# 1. 'statements' => line of Ruby code
# 2. '@binding' => a 'Binding', evaluate code in a different context
# 3. 'file' => Uses this file to tweak the stack trace in case of an exception
# 4. 'line' => Uses this line to tweak the stack trace in case of an exception
