# This class holds a deck of playing cards
class Deck
  attr_reader :number_of_decks

  # It creates a number_of_decks decks of cards
  # If number_of_decks is 0 it creates an empty deck
  # This can be good to create discard decks in the future
  def initialize(number_of_decks = 1)
    @number_of_decks = number_of_decks
    @deck = if number_of_decks > 0
              create_deck @number_of_decks
            else
              []
            end
  end

  def show
    @deck.each do |card|
      puts card.to_s
    end
    puts
    puts "#{cards_left} cards on deck"
  end

  def cards_left
    @deck.length
  end

  # The deck will be shuffled between 10 to 20 times
  # The number of times that the deck will be shuffled
  # is picked randomly
  def shuffle
    shuffles = rand(10..20)
    # puts "Deck shuffled #{shuffles} times"
    shuffles.times do
      @deck.shuffle!
    end
  end

  # It returns the top card from the deck
  # This card will not longer be on the deck
  def draw
    card = @deck[0]
    @deck.delete(card)
    card
  end

  private

  def create_deck(num_decks)
    deck = []
    (0...num_decks).each do
      Card::SUITS.each do |suit|
        Card::VALUES.each do |value|
          deck.append(Card.new(suit, value))
        end
      end
    end
    deck
  end
end
