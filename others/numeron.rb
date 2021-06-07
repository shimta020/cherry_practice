class NUME
  def initialize
    @eat = 0
    @bite = 0
    @tmp = rand_nums
  end

  def rand_nums
    arr = (0..9).to_a
    num_1 = rand(0..9)
    num_2 = (arr - [num_1]).sample
    num_3 = (arr - [num_1] - [num_2]).sample
    
    [num_1, num_2, num_3]
  end

  def numeron
    while @eat != 3
      num = gets.strip.chars.map(&:to_i)
      num.zip(@tmp) do |x, y|
        p [x,y]
        if x == y
          @eat += 1
        else
          @bite += 1 if @tmp.include?(x)
        end
      end
      output
    end
  end
  
  def output
    if @eat == 3
      puts 'Congratulations!!!'
    else
      puts "#{@eat} EAT, #{@bite} BITE"
    end
  end
end

nume = NUME.new
nume.numeron
nume.output