require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    display_tasks
  end

  def create
    # name and done = false
    # 1. Ask the user what is the name of the task
    name = @view.ask_for_name
    # 2. add that task to the repository
    # 2.1 create a new instance of task
    task = Task.new(name)
    # 2.2 call the create method on the repository
    @repository.create(task)
    # 3. display success message
    @view.success_message(task)
  end

  def mark_as_done
    # 1. list all the tasks
    display_tasks
    # 2. ask the user which task should be marked as done
    index = @view.ask_for_index("mark as done")
    # 3. find the task that the user requested
    task = @repository.find(index)
    # 4. mark it as done
    task.mark_as_done!
    # 5. show success message
    @view.marked_as_done_success
  end

  def remove
    # 0. Display all tasks
    display_tasks
    # 1. ask the user which task to delete
    index = @view.ask_for_index('delete')
    # 2. call the remove method in the repository
    @repository.remove(index)
  end

  private

  def display_tasks
    # 1. Get the list from the repository
    tasks = @repository.all

    # 2. Display the list to the user (send the list to the view)
    @view.display_tasks(tasks)
  end
end
