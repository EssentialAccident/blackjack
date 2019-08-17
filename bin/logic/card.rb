# This card holds the logic for a single playing card
class Card
  SUITS = %w[hearts diamonds clubs spades].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze

  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end
