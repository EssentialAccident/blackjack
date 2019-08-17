# This class runs the game
class Game
  def initialize
    @num_players = num_players
    @player = Player.new
    @dealer = AiDealer.new
    @deck = Deck.new
    @deck.shuffle
    # Testing quickly #
  end
end
