# Sharing scope
# For when you want to share a variable among multiple methods but don't 
# want anybody else to see that variable

# Blocks are closures, so they capture the bindings in the current environment
def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end

define_methods

p counter 
inc(4)
p counter 
