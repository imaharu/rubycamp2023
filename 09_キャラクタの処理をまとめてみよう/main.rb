require 'dxruby'
require_relative 'character'
require_relative 'player'
require_relative 'navigator'

Window.width = 800
Window.height = 600

characters = []
characters << Player.new(rand(50), rand(50), Image.load("images/character.png"))
characters << Navigator.new(100, 100, Image.load("images/navigator.png"))

Window.loop do
  break if Input.key_push?(K_ESCAPE)

  characters.each do |char|
    char.update
    char.draw
  end
end
