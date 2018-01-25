# Accessor methods (aka Class Macro)
class MyClass
  def my_attribute=(value)
    @my_attribute = value
  end

  def my_attribute
    @my_attribute
  end
end

class MyClass2
  # Generates a reader and writer for the attributek
  # Defined on class Module (usable when 'self' is module or class)
  attr_accessor :my_attribute
end
