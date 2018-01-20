# 'instance_eval' also changes the current class --
# to the singleton class of the receiver
s1, s2 = "abc", "def"

s1.instance_eval do
  def swoosh!; reverse; end
end

p s1.swoosh! # => "cba"
p s2.respond_to?(:swoosh!) # => false
