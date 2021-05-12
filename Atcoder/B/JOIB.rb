n,k = gets.strip.split.map(&:to_i)
t = gets.strip.split('')
if k-2 < 0
  s = t.map(&:swapcase)
else
  s = t[0..k-2] + t[(k-1)..(-1)].map{ |n| n.swapcase }
end
puts s.join('')