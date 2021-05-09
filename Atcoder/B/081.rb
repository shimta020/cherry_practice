# https://atcoder.jp/contests/abc081/tasks/abc081_b
#参考 https://qiita.com/terufumi1122/items/1aafe25c728e62b7bc0a

# num = gets.to_i
# numbers = gets.strip.split(' ').map(&:to_i)
# div_count = 0
# while result do
#   numbers.each do |n|
#     if n%2 != 0
#       result = false
#       return
#     end
#   end
#   div_count += 1
#   numbers.map{|n| n/2}
# end

# puts div_count

n = gets.to_i
numbers = gets.strip.split.map(&:to_i)
cnt = 0
while numbers.all?(&:even?) do
  cnt += 1
  numbers = numbers.map { |a| a / 2 }
end

puts cnt