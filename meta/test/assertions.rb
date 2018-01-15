module Kernel

  def assert_equals(fir, sec)
    return "Comparing different types" if fir.class != sec.class
    return puts "Test passed!" if fir == sec
    return puts "Test failed..." if fir != sec
  end

  module_function :assert_equals
end
