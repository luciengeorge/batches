class SlotMachine
  attr_reader :reels

  REELS = [
    'cherry',
    'seven',
    'bell',
    'star',
    'joker'
  ]

  BASE_SCORE = {
    'cherry' => 10,
    'seven' => 20,
    'bell' => 30,
    'star' => 40,
    'joker' => 50
  }
  def initialize(reels = [])
    @reels = reels
  end
  # @reels = [..., ..., ...]
  def play
    @reels = []
    3.times do
      @reels << REELS.sample
    end
    return @reels
  end

  def score
    if three_identical?
      BASE_SCORE[@reels[0]]
    elsif two_identical_and_joker?
      sorted_reels = @reels.sort
      BASE_SCORE[sorted_reels[1]] / 2
    else
      0
    end
  end

  # private

  def three_identical?
    # counts = Hash.new(0) # {}
    # @reels.each do |reel|
    #   counts[reel] += 1
    # end

    # counts.keys.size == 1

    @reels.uniq.size == 1
  end

  def two_identical_and_joker?
    @reels.uniq.size == 2 && @reels.include?('joker')
  end
end
