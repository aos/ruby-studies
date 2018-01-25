def my_method(greeting)
  "#{greeting}, #{yield}"
end

my_proc = lambda { "Aos" }
# Converting a Proc object to a block
p my_method("Hello", &my_proc) # => "Hello, Aos"

