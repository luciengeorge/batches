class Repository
  # attr_reader :tasks
  # states?
  def initialize
    @tasks = [] # Array of Task instances
  end

  def add(task)
    @tasks << task
    # @tasks.push(task)
  end

  def all
    # return the array containing all the tasks
    return @tasks
  end

  def find(task_index)
    # find a task with the task index that the user selects
    return @tasks[task_index]
  end
end
