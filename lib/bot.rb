class Bot

  attr_reader :x, :y, :z, :direction

  def initialize x, y, z, direction
    @x, @y, @z, @direction = x, y, z, direction
  end

  def forward
    @x += 1
  end
  
  def turn_left
    @direction = case @direction
      when 'N' then 'W'
      when 'W' then 'S'
      when 'S' then 'E'
      when 'E' then 'N'
    end
  end
  
  def turn_right
    3.times do turn_left end
  end

end
