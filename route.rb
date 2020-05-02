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
