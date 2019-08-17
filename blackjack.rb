# gems
require 'gosu'

# Local dependencies
require_relative 'bin/graphics/game_window'
require_relative 'bin/logic/card'
require_relative 'bin/logic/deck'
require_relative 'bin/logic/player'
require_relative 'bin/logic/human_player'
require_relative 'bin/logic/ai_dealer'
require_relative 'bin/logic/game'

# Main class for the Black Jack game
class BlackJack
  def initialize
    # @window = GameWindow.new
    @game = Game.new
  end

  def run
    # @window.show
    @game.setup
  end
end

BlackJack.new.run
