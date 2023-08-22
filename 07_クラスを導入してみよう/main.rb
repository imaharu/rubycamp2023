require 'dxruby'
require_relative 'character'

Window.width = 800
Window.height = 600

player = Character.new(0, 0, Image.load("images/character.png"))
navi = Character.new(100, 100, Image.load("images/navigator.png"))

Window.loop do
  break if Input.key_push?(K_ESCAPE)

  player.update
  navi.update

  player.draw
  navi.draw
end
