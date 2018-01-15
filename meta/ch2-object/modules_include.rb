module M1
  def my_method
    'M1#my_method()'
  end
end

module M2
  def my_second_method
    'M2#my_second_method()'
  end
end

class C
  include M1
end

class C2
  prepend M2
end

class D < C
end

class D2 < C2
end
