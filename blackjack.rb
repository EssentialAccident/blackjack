# gems
require 'gosu'

# Local dependencies
require_relative 'bin/game_window'

# Main class for the Black Jack game
class BlackJack
  def initialize
    @window = GameWindow.new
  end

  def run
    @window.show
  end
end

BlackJack.new.run
