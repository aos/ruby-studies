# Because blocks are not objects, and we want to store a block and execute it
# later, we need to turn it into an object

# Proc is a block that has been turned into an object
inc = Proc.new { |x| x + 1 }
inc.call(2) # => 3 --- Deferred Evaluation

# Kernel provides two other ways to convert a block to a Proc
# lambda and proc

dec = lambda { |x| x - 1 }
dec.class # => Proc
dec.call(2) # => 1

# Also, using 'stabby lambda' notation
p = ->(x) { x + 1 } 
p p.call(3) # => 4
