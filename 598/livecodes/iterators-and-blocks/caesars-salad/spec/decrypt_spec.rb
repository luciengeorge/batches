require_relative '../decrypt'

describe "#decrypt" do
  it "returns an empty string when passed an empty sentence" do
    actual = decrypt("")
    expect(actual).to eq("")
  end

  it "returns the correct decrypted text when passed a non-empty sentence" do
    actual = decrypt("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
    expect(actual).to eq("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
  end
end
