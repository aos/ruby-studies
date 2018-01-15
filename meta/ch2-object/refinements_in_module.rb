# Requires Ruby 2.1

module StringExtensions
  refine String do
    def reverse
      'esrever'
    end
  end
end

# Activates a refinement inside a module, and only in that module
module StringStuff
  using StringExtensions
  puts 'Refined:'
  p 'my_string'.reverse
end

puts 'Unrefined:'
p 'my_string'.reverse
