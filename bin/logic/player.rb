# This class will hold the logic for a player
class Player
  def initialize
    # TODO: The hand of the player could be implemented as a class itself
    @hand = []
  end

  # Adds the card to the the player's hand
  def get_card(card)
    @hand.append(card)
  end

  def show_hand
    puts "Player's Hand"
    @hand. each do |card|
      puts card.to_s
    end
  end
end
