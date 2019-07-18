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
      animal = Animal.new("Simba")
      expect(animal.name).to eq('Simba')
    end
  end

  describe "::animals" do
    it "returns a list of animals" do
      animals = Animal.animals
      expect(animals.size).to eq(3)
    end
  end

  describe "#eat" do
    it "return what the animal is eating" do
      animal = Animal.new('Simba')
      expect(animal.eat('a carrot')).to eq('Simba eats a carrot')
    end
  end
end


# phyla => Deuterostomia Ecdysozoa Lophotrochozoa Radiata
