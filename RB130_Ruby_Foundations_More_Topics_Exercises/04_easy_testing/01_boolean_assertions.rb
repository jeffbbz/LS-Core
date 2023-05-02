require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class BooleanAssertions < Minitest::Test
  def test_odd
    value = 3
    assert(value.odd?, "value is not odd")
    assert_equal(true, value.odd?)
  end
end


