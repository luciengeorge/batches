require_relative '../citizen'

describe Citizen do
  describe '#can_vote?' do
    it 'returns true if the citizen is 18 years old' do
      citizen = Citizen.new('', '', 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'returns true if the citizen is more than 18 years old' do
      citizen = Citizen.new('', '', 21)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'returns false if the citizen is below 18 years old' do
      citizen = Citizen.new('', '', 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns the capitalized full name of the citizen' do
      citizen = Citizen.new('john', 'doe', 19)
      expect(citizen.full_name).to eq('John Doe')
    end
  end
end
