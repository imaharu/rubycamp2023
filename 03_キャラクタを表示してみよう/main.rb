require 'dxruby'

Window.width = 800
Window.height = 600

player_img = Image.load("images/character.png")

Window.loop do
  Window.draw(0, 0, player_img) # Window座標系
end
