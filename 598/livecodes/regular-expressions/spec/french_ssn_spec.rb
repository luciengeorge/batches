require_relative '../french_ssn'

describe "#french_ssn_info" do
  it "returns 'The number is invalid' if passed an empty string" do
    actual = french_ssn_info("")
    expect(actual).to eq('The number is invalid')
  end

  it "returns 'a man, born in December, 1984 in Seine-Maritime.' if passed '1 84 12 76 451 089 46'" do
    actual = french_ssn_info('1 84 12 76 451 089 46')
    expect(actual).to eq('a man, born in December, 1984 in Seine-Maritime.')
  end
end
