class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def say_hello
    puts "My name is #{@name} and I am a #{@breed}"
  end

  def change_name!(new_name)
    @name = new_name
  end

  def self.bark
    puts "Woof!"
  end

  def self.legs
    4
  end
end
