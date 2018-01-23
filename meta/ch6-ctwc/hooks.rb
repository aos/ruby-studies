# Hook methods

class String
  # Instance method of 'Class', called when a class is inherited
  def self.inherited(subclass)
    puts "#{self} was inherited by #{subclass}"
  end
end

class MyString < String; end

module M1
  def self.included(othermod)
    puts "M1 was included into #{othermod}"
  end
end

module M2
  def self.prepended(othermod)
    puts "M2 was prepended to #{othermod}"
  end
end

class C
  include M1
  prepend M2
end

module M
  def self.method_added(method)
    puts "New method: M##{method}"
  end

  def my_method; end
end

# Other hook methods include: 
# Module#method_removed
# Module#method_undefined
# And singleton methods:
# Module#singleton_method_{added, removed, undefined}
