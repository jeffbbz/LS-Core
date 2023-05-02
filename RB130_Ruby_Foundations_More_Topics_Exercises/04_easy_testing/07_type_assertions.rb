require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TypeAssertionsPractice < Minitest::Test
  def test_value_is_numeric_class_instance
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end
end