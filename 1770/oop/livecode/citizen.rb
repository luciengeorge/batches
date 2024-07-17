class Citizen
  attr_reader :age

  def initialize(first_name, last_name, age)
    @age = age
    @first_name = first_name
    @last_name = last_name
  end

  # replaced by attr_reader :age
  # def age
  #   return @age
  # end

  def can_vote?
    age >= 18 # => age() >= 18
    # if age >= 18
    #   return true
    # else
    #   return false
    # end
  end

  def full_name
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end
end
