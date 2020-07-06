#in this assignment, we're going to create a `Todolist` which contains 
# a colleciton of `Todo` objects.  Internally to `TodoList`, we'll use 
# an `Array` to back th ecollection of `Todo` objects.


# we'll first take a look at the `Todo` class

# this class represents a todo item and its associated
# data: name and description.  There's also a "done"
# flag to show whether this todo item is done. 

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done 

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false 
  end

  def done!
    self.done = true
  end 

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s 
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.tittle &&
       description == otherTodo.description && 
       done == otherTodo.done
  end 
end

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def <<(todo)
    raise TypeError, 'can only add Todo objects' unless todo.instance_of? Todo

    @todos << todo
  end
  alias_method :add, :<<
  # rest of class needs implementation
  
  def size
    @todo.size
  end

  def first
    @todo.first
  end

  def last
    @todo.last
  end

  # def to_s
  #   text = "---- #{title} ----\n"
  #   text << @todos.map(&:to_s).join("\n")
  #   text
  # end

  def to_a
    @todos.clone
  end

  def done?
    @todos.all?(&:done?)
  end

  def item_at(idx)
    @todos.fetch(idx)
  end

  def mark_done_at(idx)
    item_at(idx).done!
  end

  def mark_undone_at(idx)
    item_at(idx).undone!
  end

  def done!
    @todos.each(&:done!)
  end

  def shift
    @todos.shift
  end

  def shift
    @todos.pop
  end

  def remove_at(idx)
    @todos.delete_at(idx)
  end

  def to_s
    text = "---- Today's Todos-----\n"
    text << @todos.map(&:to_s).join("\n")
    text 
  end

  def [](idx)
    @todos[idx]
  end

  def each
    idx = 0
    while idx < @todos.size
      yield(@todos[idx])
      idx += 1
    end 
    self
  end

  def select
    results = TodoList.new("New Todo Object")
    each do |todo|
      results << todo if yield(todo)
    end
    results
  end

  def find_by_title(string)
    #takes a string as argument, adn returns the first Todo objec that 
    #matches the argument, Return nil if no todo is found
    select {|todo| todo.title == string}[0]
  end

  def all_done
    #returns new `TodoList` object containing only the done itmes
    select(&:done?)
  end

  def all_not_done
    #returns new `TodoList` object contiang only the not done items
    select{ |todo| !todo.done?}
  end

  def mark_done(done_title)
    #takes a string as argumetn, and markts the first `Todo` object tht matches 
    #argument as done
    each { |todo| todo.done! if todo.title == done_title}
  end

  def mark_all_done
    # mark every todo as done
    each(&:done!)
  end

  def mark_all_undone
    each(&:undone!)
  end 

end


todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")

list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!
todo2.done!

results = list.select { |todo| todo.done? }  # you need to implement this method

#puts results.inspect   # this could should ouput somehtinglike [#<Todo:0x007fd88c0ad9f0 @title="Buy milk", @description="", @done=true>]
#p list.find_by_title("Buy milk")
#p list.all_done
p list.all_not_done
list.mark_done("Go to gym")
p list.all_not_done
list.mark_all_done
p list.all_done
list.mark_all_undone
p list.all_done

# list.each do |todo|
#   puts todo
# end

# list.to_a
# list.done?

# #list.item_at

# #item_at

# # list.item_at
# # list.item_at(1)
# # list.item_at(100)


# #mark_done_at

# #list.mark_done_at     # raises ArgumentError
# list.mark_done_at(1)
# #list.mark_done_at(100)

# # puts list.to_a

# # mark_undone_at 
# #list.mark_undone_at         # raises ArgumentError
# list.mark_undone_at(1)       # marks the 2nd item as not done
# #list.mark_undone_at(100)     # raises IndexError

# # puts list.to_a

# list.done!

# # puts list.to_a
# #done!
# list.done!    # marks all items as done

# #remove_at
# puts list.remove_at(1)

# # puts list.to_a

# puts list
# #puts list.done?










