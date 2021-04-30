class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts '==========================='
    puts 'Welcome to the Task Manager'
    puts '==========================='

    loop do
      puts 'What do you want to do?'
      puts '1. list all tasks'
      puts '2. add a task'
      puts '3. mark a task as completed'
      print '> '
      choice = gets.chomp.to_i

      if choice == 1
        @controller.list
      elsif choice == 2
        @controller.add_task
      elsif choice == 3
        @controller.mark_task_as_completed
      else
        puts 'Please select 1, 2, or 3'
      end
    end
  end
end
