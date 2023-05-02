require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class IncludedObjectAssertions < Minitest::Test
  def test_object_in_list
    list = ['xyz']
    assert_includes(list, 'xyz')
    assert_equal(true, list.include?('xyz'))
  end
end
