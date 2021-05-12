comp = gets.strip.split.map(&:to_i)
sum = comp.inject(0){|result, n| result + (comp.max - n)}
puts sum