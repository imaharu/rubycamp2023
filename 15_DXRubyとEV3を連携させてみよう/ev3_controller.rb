class EV3Controller
  COLOR_SENSOR = "3"
  LEFT_MOTOR = "C"
  RIGHT_MOTOR = "B"
  MOTOR_SPEED = 50

  def initialize(port = "COM4")
    @motors = [LEFT_MOTOR, RIGHT_MOTOR]
    @brick = EV3::Brick.new(EV3::Connections::Bluetooth.new(port))
    @brick.connect
    @brick.reset(*@motors)
    @wait_cnt = 0
    @last_color = get_color
  end

  def move_forward(sec, speed = MOTOR_SPEED)
    @brick.start(speed, *@motors)
    sleep sec
    @brick.stop(true, *@motors)
  end

  def get_color
    @wait_cnt += 1
    return @last_color unless @wait_cnt % 30 == 0
    @last_color = @brick.get_sensor(COLOR_SENSOR, 2)
  end

  def close
    @brick.stop(true, *@motors)
    @brick.clear_all
    @brick.disconnect
  end
end
