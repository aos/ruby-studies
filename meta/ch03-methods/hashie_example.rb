require 'hashie'
# For reference: gems/hashie-1.2.0/lib/hashie/mash.rb

# Creates pseudo-objects with method-like accessors
icecream = Hashie::Mash.new
icecream.flavor = 'strawberry'
icecream.flavor # => 'strawberry'
