# lib/lion_spec.rb
require_relative '../lion'

describe Lion do
  describe "#initialize" do
    it "creates a Lion instance" do
      simba = Lion.new("Simba")
      expect(simba).to be_an(Lion) # New matcher for students.
    end
  end

  describe "#talk" do
    it "returns sentence stating lion roars" do
      simba = Lion.new("Simba")
      expect(simba.talk).to eq('Simba roars')
    end
  end

  describe "#eat" do
    it "returns a sentence stating an animal is eating" do
      animal = Lion.new('Simba')
      expect(animal.eat('a gazelle')).to eq('Simba eats a gazelle. Law of the jungle')
    end
  end
end
