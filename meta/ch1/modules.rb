Z = 0

module A
  Z = 1
end

module A::B
  def z
    Z
  end
end

include A::B

p z
