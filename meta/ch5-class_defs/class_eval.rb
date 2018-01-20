# Adds a method to a class using 'class_eval'

# Alias: 'module_eval'
def add_method_to(a_class)
  a_class.class_eval do
    def m; 'Hello!'; end
  end
end

add_method_to String
puts "abc".m # => 'Hello!'

# 'instance_eval' only changes 'self'
# 'class_eval' changes both 'self' AND the current class 
# (effectively re-opening the class)

# Differences between 'class' and 'class_eval'
# 1. 'class' requires a constant, and opens a new scope
# 2. 'class_eval' can be used on any variable that refs the class + flat scope
