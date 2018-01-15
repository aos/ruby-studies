module Kernel

  def assert_equals(fir, sec)
    return puts "\e[31mError:\e[0m Comparing different types" if fir.class != sec.class
    return puts "\e[32mTest passed!\e[0m" if fir == sec
    return puts "\e[31mTest failed...\e[0m" if fir != sec
  end

  module_function :assert_equals
end
