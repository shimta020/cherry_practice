# https://atcoder.jp/contests/abs/tasks/abc088_b

card_cnt = gets.to_i
card_nums = gets.strip.split.map(&:to_i).sort.reverse
Alice = 0
Bob = 0
while card_nums.size > 0 do
  Alice += card_nums.shift
  break if card_nums.empty?
  Bob += card_nums.shift
end
puts Alice - Bob