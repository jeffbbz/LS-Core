require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EmptyObjectAssertions < Minitest::Test
  def test_array_empty
    list = []
    assert_empty(list)
    assert_equal(true, list.empty?)
  end
end