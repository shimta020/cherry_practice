# row,line = gets.strip.split.map(&:to_i)
# row_numbers = []
# row.times do |n|
#   row_numbers << gets.strip.split.map(&:to_i)
# end
# sum0 = row_numbers[0].inject(:+)
# line.times do |n|
#   sum0 += row_numbers[n-1][0]
# end
# result = sum0 - row_numbers[0][0]

# https://atcoder.jp/contests/abc199/tasks/abc199_b

# n = gets.to_i
# nums = []
# 2.times { nums << gets.strip.split.map(&:to_i) }
# result_nums = [*nums[0][0]..nums[1][0]]
# (n-1).times do |n|
#   result_nums &= [*nums[0][n+1]..nums[1][n+1]]
# end
# puts result_nums.size

gets
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
puts [0, b.min-a.max+1].max