require 'dxruby'

Window.width = 800
Window.height = 600

SPEED = 2

player_img = Image.load("images/character.png")

px = 0
py = 0

Window.loop do
  break if Input.key_push?(K_ESCAPE) # 後置if文（if修飾子）

  Window.draw(px, py, player_img)
  px += Input.x * SPEED
  py += Input.y * SPEED
end
