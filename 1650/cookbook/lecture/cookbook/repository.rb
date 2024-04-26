# list all tasks
# create a new task
# find one task
# remove a task

# Acts as a database
class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def create(task) # => task is an instance of Task
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
