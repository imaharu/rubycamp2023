require_relative 'ruby-ev3/lib/ev3'

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

brick.start(MOTOR_SPEED, *motors)
sleep 0.2
brick.stop(true, *motors)

puts "closing..."
brick.stop(true, *motors)
brick.clear_all
brick.disconnect
puts "finished..."
