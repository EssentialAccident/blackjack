# This class will hold the logic for a Black Jack dealer controlled by AI
class AiDealer < Player
  # def initialize(name)
  #   super name
  # end

  def setup
    @hand.last.face_down
  end
end
