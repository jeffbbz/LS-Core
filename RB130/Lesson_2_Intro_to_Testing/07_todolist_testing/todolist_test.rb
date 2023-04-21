require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    assert_equal(@todo1, @list.shift)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    assert_equal(@todo3, @list.pop)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    @list.done!
    assert_equal(true, @list.done?)
  end

  def test_type_error_raised_when_adding_not_todo_obj
    assert_raises(TypeError) { @list.add(34) }
    assert_raises(TypeError) { @list.add("hat") }
  end

  def test_shovel_adds_to_list
    todo4 = Todo.new("Get haircut")
    @list << todo4
    assert_includes(@list.to_a, todo4)
  end

  def test_item_at
    assert_equal(@todo1, @list.item_at(0))
    assert_equal(@todo3, @list.item_at(2))
    assert_raises(IndexError) { @list.item_at(100) }
  end

  def test_mark_done_at
    @list.mark_done_at(0)
    assert_equal(true, @todo1.done?)
    assert_equal(false, @todo2.done?)
    assert_raises(IndexError) { @list.mark_done_at(100) }
  end

  def test_mark_undone_at
    @todo1.done!
    @todo2.done!
    @list.mark_undone_at(0)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_raises(IndexError) { @list.mark_done_at(100) }
  end

  def test_todo_done_bang
    @list.done!
    @todos.each { |todo| assert_equal(true, todo.done?) }
    assert_equal(true, @list.done?)
  end
    
  def test_remove_at
    assert_raises(IndexError) { @list.remove_at(100) }
    assert_same(@todo1, @list.remove_at(0))
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_empty_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_one_done_to_s
    @todo1.done!
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_all_done_to_s
    @list.done!
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_each_iterate
    array = []
    @list.each { |todo| array << todo }
    assert_equal(@list.to_a, array)  
  end

  def test_each_return_org_obj
    assert_same(@list, @list.each { |_| "nothing" })
  end

  def test_select
    refute_same(@list, @list.select { |_| true })
    
    @todo1.done!
    list = @list.select { |todo| !todo.done? }
    assert_equal([@todo2, @todo3], list.to_a)
  end

  def test_all_not_done
    assert_equal( @list.to_a, @list.all_not_done.to_a)
    @todo3.done!
    assert_equal([@todo1, @todo2], @list.all_not_done.to_a)
  end

  def test_mark_all_done
    @list.mark_all_done
    assert_equal([@todo1, @todo2, @todo3], @list.all_done.to_a)
    assert_equal(@list.to_a, @list.all_done.to_a)
  end

  def test_mark_all_undone
    @list.mark_all_done
    @list.mark_all_undone
    assert_equal([@todo1, @todo2, @todo3], @list.all_not_done.to_a)
    assert_equal(@list.to_a, @list.all_not_done.to_a)
  end

end