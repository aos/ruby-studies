module Printable
  def print
    puts 'print() from Printable'
  end

  def prepare_cover
    puts 'prepare_cover() from Printable'
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    puts 'format_for_screen() from Document'
  end

  def print
    puts 'print() from Document'
  end
end

class Book
  include Document
  include Printable
end

b = Book.new
b.print_to_screen
