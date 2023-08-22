class Navigator < Character
  def update(map)
    update_new_position(map, @x + Input.x, @y + Input.y)
  end
end