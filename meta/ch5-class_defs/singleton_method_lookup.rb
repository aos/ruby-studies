# Singleton method

class C
  def a_method
    'C#a_method()'
  end
end

class D < C; end

obj = D.new
obj.a_method # => 'C#a_method()'

class << obj
  def a_singleton_method
    'obj#a_singleton_method()'
  end
end

p obj.singleton_class.superclass # => D

# Singleton class inheritance
class C 
  # Opens the singleton class
  class << self
    def a_class_method
      'C.a_class_method()'
    end
  end
end

p C.singleton_class.ancestors

# This allos for calling a class method on a subclass
p D.a_class_method
