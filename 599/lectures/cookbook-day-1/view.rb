class View
  def ask_for_task_name
    puts 'What task do you want to add?'
    print '> '
    return gets.chomp
  end

  def display(tasks)
    tasks.each_with_index do |task, index|
      completed = task.completed ? '[X]' : '[ ]'
      puts "#{index + 1}. #{completed} #{task.name}"
    end
  end

  def choose_task_index
    puts 'Which task have you completed?'
    print '> '
    gets.chomp.to_i - 1
  end
end
