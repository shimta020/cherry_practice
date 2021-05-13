# https://atcoder.jp/contests/abs/tasks/abc085_b

n = gets.to_i
arr = n.times.map{ |n| gets.to_i }
 
puts arr.uniq.size

# uniq使わない別解
# n = gets.chomp.to_i
# values = []
# n.times do |i|
#   val = gets.chomp.to_i
#   values.push(val) unless values.include?(val)
# end
 
# puts values.size