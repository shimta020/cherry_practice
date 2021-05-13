# https://atcoder.jp/contests/abc087/tasks/abc087_b

a,b,c,x = 4.times.map{gets.to_i}
result = 0
(0..a).each do |p|
  (0..b).each do |q|
    (0..c).each do |r|
      total = 500*p + 100*q + 50*r
      result += 1 if total == x 
    end
  end
end
puts result