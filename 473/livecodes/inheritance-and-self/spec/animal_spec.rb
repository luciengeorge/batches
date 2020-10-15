require_relative '../animal'

describe Animal do
  describe "#initialize" do
    it "should return an instance of Animal" do
      animal = Animal.new('Simba')
      expect(animal).to be_an(Animal)
    end
  end

  describe "::phyla" do
    it "should return a list of the 4 phyla of the kingdom" do
      phylas = Animal.phyla
      expect(phylas.size).to eq(4)
    end
  end

  describe "#eat" do
    it "should return a sentence stating what the animal is eating" do
      animal = Animal.new('Simba')
      sentence = animal.eat('a gazelle')
      expect(sentence).to eq('Simba eats a gazelle')
    end
  end
end
