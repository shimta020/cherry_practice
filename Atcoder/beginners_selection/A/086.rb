# https://atcoder.jp/contests/abc086/tasks/abc086_a

puts "入力してください"
a,b = gets.split.map(&:to_i)
puts (a*b).odd? ? 'Odd' : 'Even'