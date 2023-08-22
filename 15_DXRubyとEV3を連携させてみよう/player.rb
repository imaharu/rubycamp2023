class Player < Character
  def update(map)
    update_new_position(map, @x + rand(3) - 1, @y + rand(3) - 1)
  end
end