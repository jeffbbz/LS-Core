require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class ExceptionAssertions < Minitest::Test
  def test_exception_raised
    assert_raises(NoExperienceError) { employee.hire }
  end
end