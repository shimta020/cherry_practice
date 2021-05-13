# https://atcoder.jp/contests/joig2021-open/tasks/joig2021_a

comp = gets.strip.split.map(&:to_i)
sum = comp.inject(0){|result, n| result + (comp.max - n)}
puts sum