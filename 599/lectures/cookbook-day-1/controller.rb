require_relative 'task'

class Controller
  def initialize(repository, view)
    @repository = repository
    @view = view # => View.new
  end

  def list
    # 1. gets the tasks array (Repository)
    tasks = @repository.all
    # 2. display the tasks (View)
    @view.display(tasks)
  end

  def add_task
    # 1. Ask the user for a task name
    name = @view.ask_for_task_name
    # 2. Create an instance of that task
    task = Task.new(name)
    # 3. Add the task to the list of tasks in the
    #  repository
    @repository.add(task)
  end

  def mark_task_as_completed
    # 1a. get all the tasks from the repository
    tasks = @repository.all
    # 1b. list the tasks
    @view.display(tasks)
    # 2. ask the user to choose a task (task index)
    task_index = @view.choose_task_index
    # 3. fetch the task from the repository
    task = @repository.find(task_index)
    # 4. mark task as completed
    # task.completed = true
    task.mark_as_completed
  end
end
