# gems
require 'gosu'

# Local dependencies
require_relative 'bin/graphics/game_window'
require_relative 'bin/logic/card'
require_relative 'bin/logic/deck'

# Main class for the Black Jack game
class BlackJack
  def initialize
    @window = GameWindow.new
    @deck = Deck.new
  end

  def run
    # @window.show
  end
end

BlackJack.new.run
