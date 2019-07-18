# spec/warthog_spec.rb
require_relative "../warthog"

describe Warthog do
  describe "#talk" do
    it "returns a sentence stating the warthog is grunting" do
      pumba = Warthog.new("Pumba")
      expect(pumba.talk).to eq("Pumba grunts")
    end
  end
end
