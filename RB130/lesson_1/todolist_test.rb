require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require "minitest/reporters"
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

  # Your tests go here. Remember they must start with "test_"
  
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
    todo = @list.shift
    assert_equal(@todo1, todo)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    todo = @list.pop
    assert_equal(@todo3, todo)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    # this should return true if all items in the list are done, and false otherwise

    assert_equal(false, @list.done?)
  end

  def test_typeerror
    assert_raises(TypeError) { @list.add(1) }
    assert_raises(TypeError) { @list.add("hi")}
  end

  def test_shovel
    new_todo = Todo.new("Walk the dag")
    @list << new_todo
    @todos << new_todo 
    
    assert_equal(@todos, @list.to_a)
  end

  def test_alias
    new_todo = Todo.new("Feed the cat")
    @list.add(new_todo)
    @todos << new_todo

    assert_equal(@todos, @list.to_a)
  end

  def test_item_at
    assert_raises(IndexError) { @list.item_at(100) }
    assert_equal(@todo1, @list.item_at(0))
    assert_equal(@todo2, @list.item_at(1))
  end

  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(100)}
    @list.mark_done_at(1)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(false, @todo3.done?)
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(100) }
    @todo1.done!
    @todo2.done!
    @todo3.done!
    @list.mark_undone_at(1)
    assert_equal( true, @todo1.done?)
    assert_equal( false, @todo2.done?)
    assert_equal( true, @todo3.done?)
  end

  def test_done!
    @list.done!
    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
    assert_equal(true, @list.done?)
  end

  def test_remove_at
    #this raise IndexError if argument does not return item.
    #assert_raises(IndexError) { @list.remove_at(100)}
    @list.remove_at(1)
    assert_equal([@todo1, @todo3], @list.to_a)
  end

  def test_to_s
    # this one is a little tricky, so we'll show the code for 
    # this one first.  In this test, we want to test a muliline string
    # which is wha tthe to_s method returns.  the easiest way to do this 
    # is to first capture what we expect in a variable, then compare that
    # to the to_s method

    #However, there are some nuances we must take care of.  Frist, we have to 
    # consdier how to save a multi-line string into a variable.  The answer here is a HEREDOC

    #  The second problem is that we want the heredoc to ignore preceeding spaces
    # and trailing newlines.  This is so we can compare the value of the heredoc
    #with the avlue from to_s, which doesn't contain preceding spaces or
    # trailing newlines.  We can solve this problem by adding some processing code to the heredoc. See below.

    output = <<~OUTPUT.chomp
    ---- Today's Todos-----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)

  end 

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos-----
    [ ] Buy milk
    [X] Clean room
    [ ] Go to gym
    OUTPUT
    
    @todo2.done!
    assert_equal(output, @list.to_s)
  end
  
  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos-----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    @list.done!
    assert_equal(output, @list.to_s)
  end

  def test_each
    # what we're looking for here is to test that `each` method
    # is actually iteratin.  There are lots of ways to test this
    # so pick something simple to assert against. 
    counter = 0
    object_1 = @list.each { counter += 1 }
    assert_equal(3, counter)
    assert_same(@list, object_1)
  end

  def select
    @todo1.done!
    list = TodoList.new(@list.title)
    list.add(@todo1)

    assert_equal(list.title, @list.title)
    assert_equal(list.to_s, @list.select{ |todo| todo.done?}.to_s)

  end
 


end