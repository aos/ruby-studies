# In a class def, the role of 'self' belongs to the class itself
class MyClass
  # belongs to class (class instance variable)
  @my_var = 1

  def self.read; @my_var; end
  # belongs to 'obj'
  def write; @my_var = 2; end
  def read; @my_var; end
end

obj = MyClass.new
p obj.read # => nil
obj.write
puts obj.read # => 2
puts MyClass.read # => 1
