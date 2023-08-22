require 'dxruby'

Window.width = 800
Window.height = 600

player_img = Image.load("images/character.png")
navi_img = Image.load("images/navigator.png")

px = 0
py = 0

nx = 100
ny = 100

Window.loop do
  break if Input.key_push?(K_ESCAPE)

  Window.draw(px, py, player_img)
  Window.draw(nx, ny, navi_img)

  px += Input.x
  py += Input.y

  nx += Input.x
  ny += Input.y
end
