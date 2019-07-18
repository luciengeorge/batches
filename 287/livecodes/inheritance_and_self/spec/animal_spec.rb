# spec/animal_spec.rb
require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "creates an Animal instance" do
      animal = Animal.new("Babe")
      expect(animal).to be_an(Animal) # New matcher for students.
    end
  end
end
