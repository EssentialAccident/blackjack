# This class holds one or more decks of 52 playing cards
class Deck
  def initialize(number_of_decks = 1)
    @deck = create_deck number_of_decks
  end

  def show_deck
    @deck.each do |card|
      puts card.to_s
    end
  end

  def cards_left
    @deck.lenght
  end

  # The deck will be shuffled between 10 to 20 times
  # The number of times that the deck will be shuffled
  # is picked randomly
  def shuffle
    shuffles = rand(10..20)
    puts "Deck shuffled #{shuffles} times"
    shuffles.times do
      @deck.shuffle!
    end
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
