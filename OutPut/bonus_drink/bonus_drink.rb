# 入力をコンソールで受け取って出力

# n = gets.to_i
# result = n
# tmp_empty_drink = n
# while tmp_empty_drink > 2
#   a,b = tmp_empty_drink.divmod(3)
#   tmp_empty_drink = a + b
#   result += a
# end
# puts result

# クラスを使って(再帰関数で)

class Drink
  def output(number)
    number + bonus(number)
  end

  def bonus(number)
    div, mod = number.divmod(3)
    return 0 if div == 0
    div + bonus(div + mod)
  end
end

puts Drink.new.output(100)