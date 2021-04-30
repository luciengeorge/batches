class Task
  attr_reader :name, :completed  # encapsulation

  def initialize(name)
    @name = name
    @completed = false
  end

  def mark_as_completed
    @completed = true
  end
end
