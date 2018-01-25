# 'alias_method_chain'

module Greetings
  def greet
    'hello'
  end
end

class MyClass
  include Greetings

  # Wrap optional functionality around 'greet' using Around Alias
  def greet_with_enthusiasm
    "Hey, #{greet_without_enthusiasm}!"
  end

  alias_method :greet_without_enthusiasm, :greet
  alias_method :greet, :greet_with_enthusiasm
end

p MyClass.new.greet
