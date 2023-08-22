require_relative 'ruby-ev3/lib/ev3'

COLOR_SENSOR = "3"
LEFT_MOTOR = "C"
RIGHT_MOTOR = "B"
PORT = "COM3"
MOTOR_SPEED = 50

puts "starting..."
brick = EV3::Brick.new(EV3::Connections::Bluetooth.new(PORT))
brick.connect
puts "connected..."
motors = [LEFT_MOTOR, RIGHT_MOTOR]

brick.reset(*motors)   # モーターの回転方向を初期化

# 0.2秒間だけ速度50にて前進
brick.start(MOTOR_SPEED, *motors)
sleep 0.2
brick.stop(true, *motors)

# 10秒間、カラーセンサーの値をコンソールに出力する
cnt = 0
while cnt < 10
  puts brick.get_sensor(COLOR_SENSOR, 2)
  sleep 1
  cnt += 1
end


puts "closing..."
brick.stop(true, *motors)
brick.clear_all
brick.disconnect
puts "finished..."
