module MyModule
  def my_method
    42
  end
end

# Unbound methods have been detached from their original class or module
# You can unbind a method by calling Method#unbind
# Or directly: Module#instance_method

unbound = MyModule.instance_method(:my_method)
unbound.class # => UnboundMethod

# Unbound methods can't be called directly, but can be attached to an object
# UnboundMethod#bind

# Binding an UnboundMethod by passing it to Module#define_method
String.class_eval do
  define_method :another_method, unbound
end

"abc".another_method # => 42
