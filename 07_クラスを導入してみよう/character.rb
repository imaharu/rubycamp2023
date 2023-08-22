class Character
  # コンストラクタ
  def initialize(x, y, img)
    @x = x
    @y = y
    @img = img
  end

  def update
    @x += Input.x
    @y += Input.y
  end

  def draw
    Window.draw(@x, @y, @img)
  end
end