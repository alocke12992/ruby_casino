
class Card
 
  attr_accessor :number, :suit, :value

  def initialize(number, suit, value)
    @number = number
    @suit = suit
    @value = value
  end
  def to_s
    "#{@number} of #{@suit}"
  end
end


class Deck
  def initialize
    @cards = []
    ranks = %w{ ace two three four five six seven eight nine ten jack queen king}
    suits = %w{Spades Hearts Diamonds Clubs}
    suits.each do |suit|
      (ranks.size).times do |i|
      @cards.push(Card.new(ranks[i], suit, (i+1)))
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end
 
  def draw
    @cards.sample
  end

  def remaining
    @cards.length
  end
end



deck = Deck.new

deck.shuffle!

puts deck.draw

