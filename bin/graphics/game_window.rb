class GameWindow < Gosu::Window
  WIDTH = 800
  HEIGHT = 600

  def initialize
    super WIDTH, HEIGHT
    self.caption = 'Black Jack'
  end

  def update; end

  def draw; end

  def button_down(id)
    case id
    when Gosu::KB_Escape
      close
    end
  end

  def needs_cursor?
    true
  end
end
