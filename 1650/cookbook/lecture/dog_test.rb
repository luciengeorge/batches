require_relative 'dog'

frankie = Dog.new("Frankie", "Cavapoo")
leo = Dog.new("Leo", "Golden Retriever")
p frankie
p leo

frankie.say_hello
leo.say_hello
Dog.bark

frankie.change_name!('francesca')
p frankie

array = [1,2,3,4]
value = array.pop

p value
