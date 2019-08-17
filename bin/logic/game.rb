# This class runs the game
class Game
  def initialize
    @player = HumanPlayer.new('Player')
    @dealer = AiDealer.new('Dealer')
    @deck = Deck.new
    @deck.shuffle
  end

  def setup
    # Each player gets two cards
    2.times do
      @player.get_card(@deck.draw)
      @dealer.get_card(@deck.draw)
    end
    # Show Both Hands
    puts
    @player.show_hand
    @player.show_score
  end
end
