require_relative '../acronymize' # file name not method name

describe "#acronymize" do
  it "should return an empty string when passed an empty string" do
    actual = acronymize("")
    expect(actual).to eq("")
  end

  it "should return the correct acronyme for a capitalized sentence" do
    actual = acronymize("Frequently Asked Questions")
    expect(actual).to eq("FAQ")
  end

  it "should return the correct acronyme for a downcased sentence" do
    actual = acronymize("working from home")
    expect(actual).to eq("WFH")
  end

  it "should return the correct acronyme for an upcased sentence" do
    actual = acronymize("AWAY FROM KEYBOARD")
    expect(actual).to eq("AFK")
  end
end
