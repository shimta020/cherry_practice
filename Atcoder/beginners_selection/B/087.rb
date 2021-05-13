# https://atcoder.jp/contests/abc087/tasks/abc087_b

# a,b,c = gets.strip.split.map(&:to_i)
a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
sum = []
(0..a).each do |p|
  (0..b).each do |q|
    (0..c).each do |r|
      sum << 500*p + 100*q + 50*r
    end
  end
end
puts sum.select{|n| n ==x }.size