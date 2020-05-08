class Train

  def initialize(num, type, count_wagon)
    @num = num
    @type = type
    @count_wagon = count_wagon
    @speed = 0
    @route = []
  end

  def speed_up(up_speed)
    @up_speed = up_speed
    while @speed < @up_speed
      @speed += 1
    end
  end

  def speed(speed)
    @speed = speed
  end

  def count_wagon
    @count_wagon
  end

  def speed_down(down_speed = 0)
    @down_speed = down_speed
    until @speed == @down_speed
      @speed -= 1
    end
  end

  def stop
      @stop = 0
  end

  def wagon_add(wagon_add = 1)
    @wagon_add = wagon_add
    @count_wagon += @add_wagon if @speed == 0
  end

  def wagon_del(wagon_del = 1)
    @wagon_del = wagon_del
    @count_wagon -= @wagon_del if @speed == 0
  end

  def route(*route)
    @route = route
    @station = @route[0]
  end

  def forward
    f = @route.index(@station) + 1
    @station = @route[f]
  end

  def backward
    b = @route.index(@station) - 1
    @station = @route[b]
  end

  def station
    @station
  end
end
