require_relative '../encrypt'

describe "#encrypt" do
  it "returns an empty string when passed an empty sentence" do
    actual = encrypt("")
    expect(actual).to eq("")
  end

  it "returns the correct encrypted text when passed a non-empty sentence" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expect(actual).to eq("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
  end
end
