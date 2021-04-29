require_relative '../animal'

describe Animal do
  describe "#initialize" do
    it "initialzes an instance of Animal" do
      animal = Animal.new('Simba')
      expect(animal).to be_an(Animal)
    end
  end

  describe '#name' do
    it "returns the name of the animal" do
      animal = Animal.new('Simba')
      expect(animal.name).to eq('Simba')
    end
  end

  describe '::phyla' do
    it "returns the 4 phyla of the animal kingdom" do
      phyla = Animal.phyla
      expect(phyla).to eq(%w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata])
    end
  end

  describe '#eat' do
    it "returns a sentence stating an animal is eating" do
      animal = Animal.new('Rusty')
      expect(animal.eat('nails')).to eq("Rusty eats nails")
    end
  end
end

# %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
# ["Deuterostomia", "Ecdysozoa", "Lophotrochozoa", "Radiata"]
