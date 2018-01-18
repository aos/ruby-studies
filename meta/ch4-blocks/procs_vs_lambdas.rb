# Two main differences between lambdas and procs

# 1. 'return' -- in lambda, 'return' just returns from the lambda
def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }
double(l) # => 20

# In a proc, 'return' returns from the scope where the proc itself
# was defined
def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2 # <== Unreachable!
end

another_double # => 10

# This errors
p = Proc.new { return 10 }
double(p) # => LocalJumpError

# The second difference: arity
# Procs are more tolerant of incorrect number of arguments
# Lambdas will error with ArgumentError
p = Proc.new { |a, b| [a, b] }
p.call(1, 2, 3) # => [1, 2]
p.call(1) # => [1, nil]
