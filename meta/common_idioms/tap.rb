# Long method chain
%w(a b c).push('d').shift.upcase.next

# If you want to debug in the chain, but don't want to split the call chain,
# slip 'tap' method inside:
%w(a b c).push('d').shift.tap { |x| puts x }.upcase.next

# 'tap' implementation
class Object
  def tap
    yield self
    self
  end
end
