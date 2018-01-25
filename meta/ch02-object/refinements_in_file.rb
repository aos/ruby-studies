# Refinements are not active by default
# To activate the changes, it has to be done explicity with 'using'
module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

begin
  p 'my *1st* refinement!'.to_alphanumeric # this will fail
rescue NoMethodError => e
  p e
  puts 'Activating refinement...'
  using StringExtensions # We activate StringExtensions
  p 'my *1st* refinement!'.to_alphanumeric
end
