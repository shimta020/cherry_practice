# https://atcoder.jp/contests/abc201/tasks/abc201_b

n = gets.to_i
mountains = n.times.map{ gets.strip.split }
hash_mountains = {}
mountains.each do |m|
  s = m[0]
  t = m[1].to_i
  hash_mountains.store(s,t)
end
puts hash_mountains.sort_by{ |key, value| value }.reverse[1][0]

# これだとだめだった
# n = gets.to_i
# mountains = n.times.map{ gets.strip.split }
# puts mountains.sort_by{|a| a[1]}[-2][0]