class Station

  def initialize(name)
    @name = name
    @trains = []
  end

  def add_train(train)
    @train = train
    @trains << @train
  end

  def del_train(train)
    @train = train
    del_tr = [@train]
    del_tr.each {|train| @trains.delete_at(@trains.index(train))}
  end

  def list
    puts "Список :"
    @trains = @trains.sort
    @trains.each {|t| puts "#{t}"}
    puts "Колличество : #{@trains.size}"
    @c_t = @trains.each_with_object(Hash.new 0) { |t, c| c[t] += 1}
    @c_t.each {|t, c| puts "#{t} - #{c}"}
  end
end
