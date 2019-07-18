class ParentClass
end

class ChildClass < ParentClass # inheritance syntax
end

Time.now # class method of Time
JSON.parse("{}") # class method of JSON
CSV.open() # class method of CSV

le_gavroche = GastronomicRestaurant.new('le gavroche', 50, 'london', 'french', 2)
le_gavroche.name # instance method of GastronomicRestaurant
