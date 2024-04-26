class View
  def display_tasks(tasks)
    if tasks.empty?
      puts "There are no tasks yet!"
    end
    tasks.each_with_index do |task, index|
      x_mark = task.done? ? 'X' : ' '
      # x_mark = if task.done?
      #   'X'
      # else
      #   ' '
      # end
      # if task.done?
      #   x_mark = 'X'
      # else
      #   x_mark = ' '
      # end
      puts "#{index + 1}. [#{x_mark}] #{task.name}"
    end
  end

  def ask_for_name
    print "What is the name of your task?\n> "
    gets.chomp
  end

  def success_message(task)
    puts "#{task.name} was successfully created!"
  end

  def ask_for_index(action)
    print "Which task do you want to #{action}?\n> "
    gets.chomp.to_i - 1
  end

  def marked_as_done_success
    puts "Task was marked as done successfully"
  end
end
