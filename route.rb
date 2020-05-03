class Route
attr_accessor :@list_st, :name
attr_reader :begin_st, :end_st

  def initialize(begin_st, end_st)
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
end
