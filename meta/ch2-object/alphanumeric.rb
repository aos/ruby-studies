class String
  def to_alphanumberic
    gsub(/[^\w\s]/, '')
  end
end

require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumberic
  end
end
