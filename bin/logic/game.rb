# This class runs the game
class Game
  def initialize
    # The players, included the dealer, will reside in this array
    @players = []
    @players.append(HumanPlayer.new('Player'))
    @players.append(AiDealer.new('Dealer'))
    @deck = Deck.new
    @deck.shuffle
    @game_over = false
    @message = ''
    @turn = 0
  end

  def setup
    # Clearing up the screen
    # system 'clear'
    # Players hands have to be cleared
    @players.each(&:clear_hand)
    # Each player gets two cards
    2.times do
      @players.each(&:get_card)
    end
    @players.each do |player|
      player.setup if player.class = 'AiDealer'
    end
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
      puts @message.colorize(:red) unless @message.empty?
      @message = ''
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
    else
      @message = 'Pick one of the the colorized options'
    end
  end
end
