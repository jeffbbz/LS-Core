class TaskManager
  attr_reader :owner
  attr_accessor :tasks

  def initialize(owner)
    @owner = owner
    @tasks = []
  end

  def add_task(name, priority=:normal)
    task = Task.new(name, priority)
    tasks.push(task)
  end

  def complete_task(task_name)
    completed_task = nil

    tasks.each do |task|
      completed_task = task if task.name == task_name
    end

    if completed_task
      tasks.delete(completed_task)
      puts "Task '#{completed_task.name}' complete! Removed from list."
    else
      puts "Task not found."
    end
  end

  def display_all_tasks
    display(tasks)
  end

  def display_high_priority_tasks
    high_priority = tasks.select do |task|
      task.priority == :high
    end

    display(high_priority)
  end

  private

  def display(tasks)
    puts "--------"
    tasks.each do |task|
      puts task
    end
    puts "--------"
  end
end

class Task
  attr_accessor :name, :priority

  def initialize(name, priority=:normal)
    @name = name
    @priority = priority
  end

  def to_s
    "[" + sprintf("%-6s", priority) + "] #{name}"
  end
end

valentinas_tasks = TaskManager.new('Valentina')

valentinas_tasks.add_task('pay bills', :high)
valentinas_tasks.add_task('read OOP book')
valentinas_tasks.add_task('practice Ruby')
valentinas_tasks.add_task('run 5k', :low)

valentinas_tasks.complete_task('read OOP book')  # Task 'read OOP book' complete! Removed from list.

valentinas_tasks.display_all_tasks   # outputs tasks with priority and task
valentinas_tasks.display_high_priority_tasks  # private method `select' called for nil:NilClass (NoMethodError)


=begin
  
The exception is raised for line 35: `tasks = tasks.select do |task|`. Although the original intention seems to be to
  initialize a local variable tasks to reference the return value of a call to the select method on the array referenced
  by the instance variable @tasks, our syntax has confused Ruby. Instead it interprets the caller of select as our
  newly initialize local variable tasks, which having as yet been assigned to reference any value, has a value of nil, 
  and thus our error. This is a form of variable shadowing. 

To refactor this we can either append `self` to `tasks.select` or rename the local variable to something other than
tasks.

=end
