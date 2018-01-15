# 1. Only one object can be 'self' at any given moment
# 2. The object that was the last method receiver will have the role of self
#    most of the time
# 3. Every time you call a method on an object, that object becomes self
# 
# Two special cases:
# 1. If no methods have been called or all methods have returned, `main` is self
# 2. In a class or module definition (and outside any method), self is the class
#    or module


class MyClass
  def testing_self
    @var = 10 # An instance variable of self
    my_method() # Same as self.my_method()
    self
  end

  def my_method
    @var = @var + 1
  end
end

obj = MyClass.new
p obj.testing_self

# Testing private methods
class C
  def public_method
    self.private_method # Cannot call a private method with explicit receiver
  end

  private

  def private_method
  end
end

C.new.public_method # This will fail, but it will work by removing 'self'
                    # from 'private_method'
