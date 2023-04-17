# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title
  attr_reader :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def each
    todos.each { |todo| yield(todo) }
    self
  end

  def select
    newlist = TodoList.new(title)
    each { |todo| newlist.add(todo) if yield(todo) }
    newlist
  end

  def find_by_title(title)
    select { |todo| todo.title == title }.first
  end

  def all_done
    select { |todo| todo.done? }
  end

  def all_not_done
    select { |todo| !todo.done? }
  end

  def mark_done(title)
    find_by_title(title).done!
  end

  def mark_all_done
    each { |todo| todo.done! }
  end

  def mark_all_undone
    each { |todo| todo.undone! }
  end

  def add(new_todo)
    raise TypeError.new("Can only add Todo objects") if new_todo.class != Todo
    todos << new_todo
  end

  alias_method :<<, :add

  def size
    todos.size
  end

  def first
    todos.first
  end

  def last
    todos.last
  end

  def to_a
    todos.dup
  end

  def done?
    todos.all? { |todo| todo.done }
  end

  def item_at(index)
    todos.fetch(index)
  end

  def mark_done_at(index)
    item_at(index).done!
  end

  def mark_undone_at(index)
    item_at(index).undone!
  end

  def done!
    todos.each { |todo| todo.done! }
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(index)
    todos.delete(item_at(index))
  end

  def to_s
    <<~TEXT
    ---- #{title} ----
    #{todos.map(&:to_s).join("\n")} 
    TEXT
  end
end

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
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end


# given
todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

# ---- Adding to the list -----

# add
list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
# list.add(1)                     # raises TypeError with message "Can only add Todo objects"

# <<
# same behavior as add

list << todo3                   # adds todo3 to end of list, returns list

# # ---- find_by_title -----

# p list.find_by_title("Buy milk")  # => #<Todo:0x00007fdd0700df70 @title="Buy milk", @description="", @done=false>
# p list.find_by_title("Rent car")  # => nil

# # ---- all_done -----

# p list.all_done
# todo3.done!
# p list.all_done

# # ---- all_not_done -----

# p list.all_not_done
# todo3.done!
# p list.all_not_done

# # ---- mark_done -----

# p list.all_done
# list.mark_done("Clean room")
# p list.all_done

# # ---- mark_all_done -----

# # p list.all_done
# list.mark_all_done
# p list.all_done

# # ---- mark_all_undone -----

# # p list.all_done
# list.mark_all_undone
# p list.all_not_done

# # ---- Each -----

# list.each { |todo| puts todo }  # [ ] Buy milk, [ ] Clean room, [ ] Go to gym

# # ---- Select -----

# todo1.done!

# results = list.select { |todo| todo.done? }    # you need to implement this method

# puts results.inspect

# # ---- Interrogating the list -----

# # size
# list.size                       # returns 3

# # first
# list.first                      # returns todo1, which is the first item in the list

# # last
# list.last                       # returns todo3, which is the last item in the list

# #to_a
# list.to_a                      # returns an array of all items in the list

# #done?
# list.done?                     # returns true if all todos in the list are done, otherwise false

# # ---- Retrieving an item in the list ----

# # item_at
# #list.item_at                    # raises ArgumentError
# list.item_at(1)                 # returns 2nd item in list (zero based index)
# #list.item_at(100)               # raises IndexError

# # ---- Marking items in the list -----

# # mark_done_at
# # list.mark_done_at               # raises ArgumentError
# list.mark_done_at(1)           # marks the 2nd item as done
# # list.mark_done_at(100)          # raises IndexError

# # mark_undone_at
# # list.mark_undone_at             # raises ArgumentError
# list.mark_undone_at(1)          # marks the 2nd item as not done,
# # list.mark_undone_at(100)        # raises IndexError

# # done!
# list.done!                      # marks all items as done

# # ---- Deleting from the list -----

# # shift
# list.shift                      # removes and returns the first item in list

# # pop
# #list.pop                        # removes and returns the last item in list

# # remove_at
# # list.remove_at                  # raises ArgumentError
# # p list.remove_at(1)               # removes and returns the 2nd item
# # list.remove_at(100)             # raises IndexError

# # ---- Outputting the list -----

# # to_s
# list.to_s                      # returns string representation of the list
# puts list

# # # ---- Today's Todos ----
# # # [ ] Buy milk
# # # [ ] Clean room
# # # [ ] Go to gym

# # # or, if any todos are done

# # # ---- Today's Todos ----
# # # [ ] Buy milk
# # # [X] Clean room
# # # [ ] Go to gym