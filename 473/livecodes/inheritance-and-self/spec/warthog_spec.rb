require_relative '../warthog'

describe Warthog do
  describe "#talk" do
    it "should state that the animal grunts" do
      pumba = Warthog.new('Pumba')
      expect(pumba.talk).to eq('Pumba grunts')
    end
  end
end
