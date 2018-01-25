# Singleton classes
# An object can have its own special, hidden class

class Hello
end

an_obj = Hello.new

# '<<' places in the scope of the singleton class
class << an_obj
end

# Getting a reference of the singleton class by returning self
singleton_class = class << an_obj
  self
end

singleton_class.class # => Class

# Using 'Object#singleton_class'
"abc".singleton_class # => #<Class:#<String>>

# A singleton class is where an object's singleton methods live
def an_obj.my_singleton_method; end
singleton_class.instance_methods.grep(/my_/) # => [:my_singleton_method]
