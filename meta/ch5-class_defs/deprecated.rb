class Book
  def GetTitle
    "old title method"
  end

  def title2
    "old subtitle method"
  end

  def LEND_TO_USER(u)
    p "old lend method: #{u}"
  end
end

class Book
  def title 
  end

  def subtitle
  end

  def lend_to(user)
    puts "Lending to #{user}"
  end

  # Takes the old name and the new name of a method and defines a 
  # Dynamic Method that catches calls to the old name
  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      warn "Warning: #{old_method}() is deprecated. Use #{new_method}()."
      send(new_method, *args, &block)
    end
  end

  deprecate :GetTitle, :title
  deprecate :LEND_TO_USER, :lend_to
  deprecate :title2, :subtitle
end

b = Book.new
b.LEND_TO_USER("Aos")
