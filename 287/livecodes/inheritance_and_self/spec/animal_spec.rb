# spec/animal_spec.rb
require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "creates an Animal instance" do
      animal = Animal.new("Simba")
      expect(animal).to be_an(Animal) # New matcher for students.
    end
  end

  describe "#name" do
    it "returns the name of an animal instance" do
      animal = Animal.new('Simba')
      expect(animal.name).to eq('Simba')
    end
  end

  describe "::species" do
    it "returns an array of species" do
      species = Animal.species
      expect(species.size).to eq(3)
    end
  end

  describe "#eat" do
    it "returns a sentence stating an animal is eating" do
      animal = Animal.new('Simba')
      expect(animal.eat('a banana')).to eq('Simba eats a banana')
    end
  end
end






















