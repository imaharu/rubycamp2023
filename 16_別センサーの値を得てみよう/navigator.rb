class Navigator < Character
  def update(map)
    dx = 0
    dy = 0
    dx = 1 if Input.key_push?(K_RIGHT)
    dx = -1 if Input.key_push?(K_LEFT)
    dy = -1 if Input.key_push?(K_UP)

    if Input.key_push?(K_DOWN)
      dy = 1
      @ev3_controller.move_forward(0.2)
    end

    update_new_position(map, @x + dx, @y + dy)

    @ev3_controller.update_sensor_value
    Window.draw_font(600, 100, "COLOR: #{@ev3_controller.last_color}", @font)
    Window.draw_font(600, 200, "COLOR: #{@ev3_controller.last_distance}", @font)
  end
end