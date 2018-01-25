# Break 'Integer#+' so that it always returns the correct result
# plus one
# Example:
1 + 1 # => 3

class Integer
  alias_method :old_plus, :+

  def +(num)
    self.old_plus(num).old_plus(1)
  end
end

p 1 + 1
