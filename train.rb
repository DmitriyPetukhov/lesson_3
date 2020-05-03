class Train

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
      @up = 0
      @down = 0
      if @speed == 0
        up += 1 || down -= 1
      end
    end

    def route(begin_st, end_st)
      @begin_st = begin_st
      @end_st = end_st
      @list_st = []
    end

    def breed
      @list_st.unshift(@begin_st)
      @list_st.push(@end_st)
    end

    def add(name)
      @name = name
      @list_st << @name.new
    end

    def del
      @list_st.delete(@name)
    end

    def list
      breed
      @list_st.each { |l| puts "#{l}" }
    end

    def moves(f = "вперед", b = "назад")
      @forward = @list_st.index(@name) {|i| i += 1} if moves(f)
      @back = @list_st.index(@name) {|i| i -= 1} if moves(b)
    end
end
