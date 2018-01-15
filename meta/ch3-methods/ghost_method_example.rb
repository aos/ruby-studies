# -- Ghost method --
# Respond to a message that doesn't have an associated method
class C
  def method_missing(name, *args)
    name.to_s.reverse
  end
end

obj = C.new
obj.my_ghost_method # => "dohtem_tsohg_my"
