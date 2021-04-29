require_relative '../lion'

describe Lion do
  describe "#talk" do
    it "returns Simba roars" do
      simba = Lion.new('Simba')
      expect(simba.talk).to eq('Simba roars')
    end
  end

  describe '#eat' do
    it "returns a sentence stating an animal is eating" do
      simba = Lion.new('Simba')
      expect(simba.eat('a gazelle')).to eq("Simba eats a gazelle. Law of the Jungle!")
    end
  end
end
