class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    while @running do
      puts "What do you want to do?"
      display_actions
      print "> "
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def display_actions
    puts "1. List all tasks"
    puts "2. Create a new task"
    puts "3. Mark task as done"
    puts "4. Delete a task"
    puts "5. Quit"
  end

  def dispatch(action)
    case action
    when 1
      @controller.list
    when 2
      @controller.create
    when 3
      @controller.mark_as_done
    when 4
      @controller.remove
    when 5
      @running = false
    else
      puts "Enter a valid choice"
    end
  end
end
