class Route

  def initialize(begin_st, end_st)
    @begin_st = begin_st
    @end_st = end_st
    @list_st = [begin_st, end_st]
  end

  def add_station(st_name)
    @st_name = st_name
    @list_st.insert(-2, @st_name)
  end

  def del_station(st_name)
    @st_name = st_name
    @list_st.delete(@st_name)
  end

  def list
    @list_st.each { |l| puts "#{l}" }
  end
end
