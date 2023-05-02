require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'swap_letters'

class SwapLettersTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @sample_text = @file.read
    @text = Text.new(@sample_text)
  end

  def test_swap
    swap = @text.swap('a', 'e')
    expected_swap = @sample_text.gsub('a', 'e')
  
    assert_equal(expected_swap, swap)
    refute_includes(swap, 'a')
  end

  def test_word_count
    assert_equal(@sample_text.split.count, @text.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end

# or with rewind:

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'swap_letters'

class SwapLettersTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @text = Text.new(@file.read)
    @file.rewind
  end

  def test_swap
    swap = @text.swap('a', 'e')
    expected_swap = @file.read.gsub('a', 'e')
    assert_equal(expected_swap, swap)
    refute_includes(swap, 'a')
  end

  def test_word_count
    assert_equal(@file.read.split.count, @text.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end
