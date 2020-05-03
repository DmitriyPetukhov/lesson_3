class Station

  @@NAME = "Монино"

  def initialize(type)
    @type = type
    @count_type = []
  end

  def coming
    @count_type << @type
    puts "На станцию #{@@NAME} прибыл #{@type} поезд."
    list
  end

  def departure
    puts "Со станции #{@@NAME} убыл #{@type} поезд."
    @count_type.delete_at(@type) { |t| t == @type }
    list
  end

  def list
    puts "Список :"
    @count_type = @@count_type.sort
    @count_type.each { |t| puts t }
    puts "Колличество :"
    @c_t = @count_type.each_with_object(Hash.new 0) { |t, c| c[t] += 1}
    @c_t.each {|t, c| puts "#{t} - #{c}"}
  end
end
