require_relative '../meerkat'

describe Meerkat do
  describe "#talk" do
    it "should state that the animal barks" do
      timon = Meerkat.new('Timon')
      expect(timon.talk).to eq('Timon barks')
    end
  end
end
