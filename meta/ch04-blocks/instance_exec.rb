# Like 'instance_eval()' but allows arguments passed to the block

class C
  def initialize
    @x = 1
  end
end

class D
  def twisted_method
    @y = 2 
    # @'y' is empty here because instance variables depend on 'self'
    # 'instance_eval' switches 'self' to 'C' (the receiver)
    C.new.instance_eval { "@x: #{@x}, @y: #{@y}" }
  end
end

p D.new.twisted_method

# Use 'instance_exec to pass @y's value to the block
class E
  def twisted_method
    @y = 2
    C.new.instance_exec(@y) { |y| "@x: #{@x}, @y: #{y}" }
  end
end

p E.new.twisted_method
