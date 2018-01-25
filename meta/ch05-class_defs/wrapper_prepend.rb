# Using 'Module#prepend' -- Prepended Wrapper
# 'prepend' works like 'include' but it inserts the module ~below~
# the includer in the chain of ancestors, rather than above it

# This means that a method in a prepended module can override a 
# method in the includer and call the non-overridden version with
# 'super'

module ExplicitString
  def length
    super > 5 ? 'long' : 'short'
  end
end

String.class_eval do
  prepend ExplicitString
end

p String.ancestors
"War and Peace".length # => 'long'
