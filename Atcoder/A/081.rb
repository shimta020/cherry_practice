# https://atcoder.jp/contests/abc081/tasks/abc081_a
# 参考 https://qiita.com/terufumi1122/items/c060d86f966e566a0520

nums = gets.strip.split('').map(&:to_i)
puts nums.inject{|sum, n| sum+n}
# puts nums.inject(:+)