# spec/lion_spec.rb
require_relative "../meerkat"

describe Meerkat do
  describe "#talk" do
    it "returns a sentence stating the meerkat is barking" do
      timon = Meerkat.new("Timon")
      expect(timon.talk).to eq("Timon barks")
    end
  end
end
