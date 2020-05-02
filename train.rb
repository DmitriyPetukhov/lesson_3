class Route

  @@Begin_st = "Москва"
  @@End_st = "Ленинград"
  @@list_st = []

  def initialize(name)
    @name = name
  end

  def breed
    @@list_st.unshift(@@Begin_st)
    @@list_st.push(@@End_st)
  end

  def add
    @@list_st << @name
  end

  def del
    @@list_st.delete(@name)
  end

  def list
    breed
    @@list_st.each { |l| puts "#{l}" }
  end
end


class Train < Route

  def initialize(num, type, count_wagon)
    @num = num
    @type = type
    @count_wagon = count_wagon
    @speed = 0
  end

  def speed_up
    while @speed < 100
      @speed += 10
      puts "#{@speed}"
    end
  end

    def speed_down
      until @speed == 0
        @speed -= 10
      end
    end
    def stop
      @speed = 0
    end

    def wagon_count
      @wagon_count = @count_wagon
    end
    
    def wagon_up_down
      if @speed == 0
      @count_wagon += 1 || @count_wagon -= 1
      end
    end

    def list
      @@list_st[0]
      super
    end

    def moves(moves)
      @moves = moves
      @st = @@list_st.each_with_index(@name)
      case @moves
        when "вперед"  
        @st += 1
      when "назад"
        @st -= 1
      end
    end

end
