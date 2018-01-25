# Wrapper Refinement
# Calling 'super' from a refined method will call the original,
# unrefined method

module StringRefinement
  refine String do
    def length
      super > 5 ? 'long' : 'short'
    end
  end
end

using StringRefinement
"War and Peace".length # => 'long'
