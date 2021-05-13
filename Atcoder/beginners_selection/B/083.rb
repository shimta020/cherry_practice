# https://atcoder.jp/contests/abs/tasks/abc083_b

# ruby AtCoder/beginners_selection/B/083.rb

n,a,b = gets.split.map(&:to_i)

sum = 0
result = (a..n).map{|n| n}
result.each do |n|
  y = n.to_s.split('').map(&:to_i).sum
  sum += n if a <= y && y <= b
end

puts sum