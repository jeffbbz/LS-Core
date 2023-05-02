require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class KindAssertionPractice < Minitest::Test
  def test_class_is_numeric_or_subclass
    value1 = Numeric.new
    value2 = 3
    value3 = 3.3
    assert_kind_of(Numeric, value1)
    assert_kind_of(Numeric, value2)
    assert_kind_of(Numeric, value3)
  end
end