# https://atcoder.jp/contests/abs/tasks/abc083_b

# ruby AtCoder/beginners_selection/B/083.rb

n,a,b = gets.split.map(&:to_i)

sum = 0
[*a..n].each do |n|
  y = n.to_s.split('').map(&:to_i).sum
  sum += n if a <= y && y <= b
end

puts sum

# digitsを使うと
# n,a,b=gets.split.map &:to_i
# p [*1..n].select{|x|s=x.digits.sum;a <= s && s <= b}.sum
# between?を使うと
# p [*1..n].select{|i|i.digits.sum.between?(a,b)}.sum