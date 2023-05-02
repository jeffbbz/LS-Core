require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class SameObjectAssertionsPractice < Minitest::Test
  def test_list_and_list_process_same_object
    assert_same(list, list.process)
  end
end