class MyClass
  def my_method; 'my_method()'; end
  alias_method :m, :my_method # => (new name, old name)
end

obj = MyClass.new
obj.my_method # => 'my_method()'
obj.m         # => 'my_method()'

# 'alias_method' is only available on 'Module'
# 'alias' is available at the top-level
