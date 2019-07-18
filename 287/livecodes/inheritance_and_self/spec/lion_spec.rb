# spec/lion_spec.rb
require_relative "../lion"

describe Lion do
  describe "#talk" do
    it "returns a sentence stating the lion is roaring" do
      simba = Lion.new("Simba")
      expect(simba.talk).to eq("Simba roars")
    end
  end

  describe "#eat" do
    it "overrides Animal#eat" do
      simba = Lion.new("Simba")
      expect(simba.eat('a gazelle')).to eq('Simba eats a gazelle. Law of the jungle!')
    end
  end
end
