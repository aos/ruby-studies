class String
  alias_method :real_length, :length

  def length
    real_length > 5 ? 'long' : 'short'
  end
end

"War and Peace".length      # => "long"
"War and Peace".real_length # => 13

# When redefining a method, you don't change the method --
# instead, you define a new method and attach an existing name
# to the new method
# You can still call the old version, as long as you have 
# another name that's still attached to it

p String.ancestors
