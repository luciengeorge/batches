# lib/meerkat_spec.rb
require_relative '../meerkat'

describe Meerkat do
  describe "#initialize" do
    it "creates a meerkat instance" do
      timon = Meerkat.new("Timon")
      expect(timon).to be_an(Meerkat) # New matcher for students.
    end
  end

  describe "#talk" do
    it "returns sentence stating meerkat barks" do
      timon = Meerkat.new("Timon")
      expect(timon.talk).to eq('Timon barks')
    end
  end
end
