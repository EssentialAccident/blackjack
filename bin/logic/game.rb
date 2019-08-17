# This class runs the game
class Game
  def initialize
    @player = HumanPlayer.new('Player')
    @dealer = AiDealer.new('Dealer')
    @deck = Deck.new
    @deck.shuffle
    @game_over = false
  end

  def setup
    # Clearing up the screen
    # system 'clear'
    # Players habds have to be cleared
    @player.clear_hand
    @dealer.clear_hand
    # Each player gets two cards
    2.times do
      @player.get_card(@deck.draw)
      @dealer.get_card(@deck.draw)
    end
    @dealer.setup
    @game_over = false
  end

  def play
    until @game_over
      system 'clear'
      @dealer.show_hand
      space_blank
      @player.show_hand
      @player.show_score
      space_blank
      puts '[H]'.colorize(:light_blue) + 'it, ' +
           '[S]'.colorize(:light_blue) + 'tand, ' +
           '[N]'.colorize(:light_blue) + 'ew hand, or ' +
           '[E]'.colorize(:light_blue) + 'xit '
      user_input = gets.strip
      player_action user_input
    end
  end

  private

  def space_blank
    puts "\n\r"
  end

  def player_action(user_input)
    case user_input.upcase
    when 'H'
      @player.get_card(@deck.draw)
    when 'S'
    when 'N'
      setup
      play
    when 'E'
      exit
    end
  end
end
