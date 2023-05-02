require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class RefutationPractice < Minitest::Test
  def test_xyz_is_in_list_array
    list = ["yed"]
    refute_includes(list, "xyz")
  end
end