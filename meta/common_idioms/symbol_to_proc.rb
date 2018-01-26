# 'Symbol#to_proc()'

names = %w[bob bill heather]
names.map { |name| name.capitalize } # => ["Bob", "Bill", "Heather"]

# Replace a one-call block with a shorter construct
class Symbol
  def to_proc
    Proc.new { |x| x.send(self) }
  end
end

# Now convert a symbol to a 'Proc' and then to a block
names.map(&:capitalize.to_proc)

# The '&' operator turns any object to a 'Proc' by calling 'to_proc'
names.map(&:capitalize)

# With more than one operator:
[1, 2, 5].inject(0) { |memo, obj| memo + obj } # => 8
[1, 2, 5].inject(0, &:+) # => 8
