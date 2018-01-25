# Singleton methods
# Methods added to a single object

str = "just a regular string..."

def str.title?
  self.upcase == self
end

str.title? # => false
p str.methods.grep(/title?/) # => [:title?]
p str.singleton_methods # => [:title?]

# Can also be defined using: 'Object#define_singleton_method'
