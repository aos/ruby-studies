def my_method
  x = 'Goodbye'
  yield('cruel')
end

x = 'Hello'
# Blocks capture local scope on creation
my_method { |y| puts "#{x}, #{y} world" } # => 'Hello, cruel world'
