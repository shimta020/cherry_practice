n = gets.to_i
result = n
tmp_empty_drink = n
while tmp_empty_drink > 2
  a,b = tmp_empty_drink.divmod(3)
  tmp_empty_drink = a + b
  result += a
end
puts result
