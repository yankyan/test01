class Char
  def initialize (i)
    @i=i
    @st="1"
  end
  def read
    newst = ""
    while !@st.empty?
      numb = @st.scan(/#{@st[0]}*/)[0].to_s.length
      newst += "#{numb}#{@st[0]}"
      @st=@st[(numb)..@st.size]
    end
    puts newst
    @st = newst
  end
  def write
    @i.times {|i| read}
  end
end

Char.new(7).write