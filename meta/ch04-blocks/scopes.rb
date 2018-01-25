v1 = 1
class MyClass
  v2 = 2
  puts 'Inside class:'
  puts local_variables # => [:v2]
  def my_method
    puts 'Inside my_method'
    puts local_variables # => [:v3]
    v3 = 3
  end
  puts '2 - Inside Class:'
  puts local_variables # => [:v2]
end

obj = MyClass.new
obj.my_method # => [:v3]
puts local_variables # => [:v1, :obj]
