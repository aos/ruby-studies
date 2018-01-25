# Inheriting from BasicObject gives us a blank slate to work with so that
# we do not have any clashing methods like ":display"

# Inheriting from BasicObject also means we don't have to use 
# 'respond_to_missing?'
class Computer < BasicObject
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end

  # To prevent the behavior below, we must fix 'respond_to_missing?' as it is 
  # the method called from 'respond_to?'
  def respond_to_missing?(method, include_private = false)
    @data_source.respond_to?("get_#{method}_info") || super
  end
end

# This is a lie, as Computer does respond to the ghost method
cmp = Computer.new(0, DS.new)
cmp.respond_to?(:mouse) # => false
