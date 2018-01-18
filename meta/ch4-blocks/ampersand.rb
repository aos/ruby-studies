def math(a, b)
  yield(a, b)
end

# Bind the block and pass it around 'Proc'
def do_math(a, b, &operation)
  math(a, b, &operation)
end

p do_math(2, 3) { |x, y| x * y }

# Dropping the '&' references the Proc
def my_method(&the_proc)
  the_proc
end

p = my_method { |name| "Hello, #{name}!" }
p p.class
p p.call('Louie') # => "Hello, Louie!"
