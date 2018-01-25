# -- Dynamic Proxies --
# Dynamically forward method calls to another object
class MyDynamicProxy
  def initialize(target)
    @target = target
  end

  def method_missing(name, *args, &block)
    "result: #{@target.send(name, *args, &block)}"
  end
end

obj = MyDynamicProxy.new("a string")
obj.reverse # => "result: gnirts a"

obj2 = MyDynamicProxy.new(55)
puts obj2.odd? # => true
