class Player < Character
  def update
    @x += rand(3) - 1
    @y += rand(3) - 1
  end
end