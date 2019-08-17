class GameWindow < Gosu::Window
  WIDTH = 800
  HEIGHT = 600

  def initialize
    super WIDTH, HEIGHT
    self.caption = 'Black Jack'
  end

  def update; end

  def draw; end
end
