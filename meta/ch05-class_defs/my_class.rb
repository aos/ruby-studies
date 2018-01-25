# Class definitions return the value of the last statement
class MyClass
  puts 'Hello'

  def my_method
    puts 'one'
    def my_inner_method # Defined on MyClass (self)!
      puts self
    end
    my_inner_method
  end
end

result = class MyClassTwo
  self
end

puts MyClass.new.my_method
