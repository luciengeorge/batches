# lib/warthog_spec.rb
require_relative '../warthog'

describe Warthog do
  describe "#initialize" do
    it "creates a Warthog instance" do
      pumbaa = Warthog.new("Pumbaa")
      expect(pumbaa).to be_an(Warthog) # New matcher for students.
    end
  end

  describe "#talk" do
    it "returns sentence stating warthog grunts" do
      pumbaa = Warthog.new("Pumbaa")
      expect(pumbaa.talk).to eq('Pumbaa grunts')
    end
  end
end

