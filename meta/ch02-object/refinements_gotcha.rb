class MyClass
  def my_method
    puts 'original my_method()'
  end

  def another_method
    my_method
  end
end

module MyClassRefinement
  refine MyClass do
    def my_method
      puts 'refined my_method()'
    end
  end
end

using MyClassRefinement
MyClass.new.my_method # 'refined my_method()'
MyClass.new.another_method # 'Original my_method()'
