
def rand_nums
  arr = (0..9).to_a
  num_1 = rand(0..9)
  num_2 = (arr - [num_1]).sample
  num_3 = (arr - [num_1] - [num_2]).sample
  
  [num_1, num_2, num_3]
end

def numeron(num)
  tmp = rand_nums
  num = num.to_s.chars.map(&:to_i)
  eat = 0
  bite = 0
  num.zip(tmp) do |x, y|
    p [x,y]
    if x == y
      eat += 1
    else
      bite += 1 if tmp.include?(x)
    end
  end
  puts eat, bite
end

def output
  
end

numeron(354)