class Array
  def substitute(original, replacement)
    self.map { |e| e === original ? replacement : e }
  end
end

require 'test/unit'

class ToSubstituteTest < Test::Unit::TestCase
  def test_replace
    original = ['one', 'two', 'one', 'three']
    replaced = original.substitute('one', 'zero')
    assert_equal ['zero', 'two', 'zero', 'three'], replaced
  end
end
