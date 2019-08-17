# This class will hold the logic for a player
class Player
  def initialize(name)
    # TODO: The hand of the player could be implemented as a class itself
    @hand = []
    @name = name
  end

  # Adds the card to the the player's hand
  def get_card(card)
    @hand.append(card)
  end

  def show_hand
    puts "#{@name}'s Hand"
    @hand.each do |card|
      puts card.to_s
    end
  end

  def show_score; end

  def score
    has_ace = false
    score = [0, 0]
    @hand.each do |card|
      next unless card.value == 'Ace'

      score[0] = 11 if score[0] < 11
      score[1] += 1
      has_ace = true
    end
    @hand.each do |card|
      if card.value.is_a?(Integer)
        score[0] += card.value
        score[1] += card.value
      end
      if %w[Jack Queen King].include?(card.value)
        score[0] += 10
        score[1] += 10
      end
    end
    if has_ace
      if score[0] > 21
        score[0] = score[1]
        score[1] = 0
      end
    else
      score[1] = 0
    end
    score
  end

  def show_score
    scr = score
    if scr[1] > 0
      puts "#{@name}'s score: #{scr[0]} / #{scr[1]}" if scr[1] > 0
    else
      puts "#{@name}'s score: #{scr[0]}"
    end
  end
end
