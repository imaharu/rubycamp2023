require 'dxruby'

Window.width = 800
Window.height = 600

player_img = Image.load("images/character.png")

px = 0
py = 0

Window.loop do
  Window.draw(px, py, player_img)
  px += 1
  py += 1
end
