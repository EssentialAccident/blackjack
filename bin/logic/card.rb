# This card holds the logic for a single playing card
class Card
  SUITS = %w[hearts diamonds clubs spades].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace'].freeze

  attr_reader :suit, :value

  def initialize(suit, value, face_up = true)
    @suit = suit
    @value = value
    @face_up = face_up
  end

  def face_up?
    @face_up
  end

  def face_up
    @face_up = true
  end

  def face_down
    @face_up = false
  end

  def flip
    @face_up = !@face_up
  end

  def to_s
    if face_up
      "#{@value} of #{@suit}"
    else
      'Face Down'
    end
  end
end
