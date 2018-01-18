class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new

obj.instance_eval do
  p self # the block is evaluated with the receiver as self
  p @v # Allows access to private methods and instance variables 
end

v = 2
obj.instance_eval { @v = v }
p obj.instance_eval { @v } # @v => 2
