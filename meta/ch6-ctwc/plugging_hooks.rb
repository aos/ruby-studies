# Plugging into hooks from the other side, by overriding 'Module#include' instead

module M; end

class C
  def self.include(*modules)
    puts "Called: C.include(#{modules})"
    super
  end

  include M
end

# => Called: C.include(M)

# Difference:
# - 'Module#included' exists solely as a hook method, and default implementation
# is empty
# - 'Module#include' actually has to include modules, overriding it, you must
# remember to call the base implementation with 'super'

# As an alternative to overriding, you can turn a regular method into a hook
# method by using an Around Alias (alias old method)
