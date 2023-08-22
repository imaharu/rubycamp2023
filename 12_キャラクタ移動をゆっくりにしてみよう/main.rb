require 'dxruby'
require_relative 'map'
require_relative 'character'
require_relative 'player'
require_relative 'navigator'

Window.width = 800
Window.height = 600

map = Map.new("map_data/map.dat")

# ※ 座標系をマップ座標系に変更
characters = []
characters << Player.new(1, 8, Image.load("images/character.png"))
characters << Navigator.new(1, 1, Image.load("images/navigator.png"))

Window.loop do
  break if Input.key_push?(K_ESCAPE)

  map.update
  map.draw

  characters.each do |char|
    char.update(map)
    char.draw
  end
end
