# 'Module#append_features' is where the real inclusion happens
# 'append_features' is called when a module is included
#
# It checks whether the included module is already in the includer's chain of
# ancestors, and if not, it adds the module to the chain
module M
  def self.append_features(base)
    p self
    p base
  end
end

class C
  include M
end

# Overriding 'append_features' causes M to not be included in the ancestry chain
p C.ancestors # => [C, Object, Kernel, BasicObject]
