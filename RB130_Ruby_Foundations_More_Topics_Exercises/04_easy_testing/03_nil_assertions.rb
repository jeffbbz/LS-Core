require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NilAssertions < Minitest::Test
  def test_value_nil
    value = nil
    assert_nil(value)
  end
end