class Navigator < Character
  def update(map)
    dx = 0
    dy = 0
    dx = 1 if Input.key_push?(K_RIGHT)
    dx = -1 if Input.key_push?(K_LEFT)
    dy = 1 if Input.key_push?(K_DOWN)
    dy = -1 if Input.key_push?(K_UP)
    update_new_position(map, @x + dx, @y + dy)
  end
end