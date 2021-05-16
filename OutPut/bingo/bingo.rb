# ruby ./OutPut/bingo/bingo.rb

# class Bingo
#   B = (1..15).to_a
#   I = (16..30).to_a
#   N = (31..45).to_a
#   G = (46..60).to_a
#   O = (61..75).to_a
  
#   def output
#     puts header + "\n" + rows
#   end
  
#   def header
#     [' B', ' I', ' N', ' G', ' O'].join(' | ')
#   end

#   def rows
#     bingos = [B,I,N,G,O].map{ |bingo| bingo.sample(5) }.transpose
#     bingos[2][2] = '  '
#     bingos.map { |bin|
#       bin.map{ |b| b.to_s.rjust(2, ' ') }.join(' | ')
#     }.join("\n")
#   end
# end

# bingo = Bingo.new
# bingo.output

class Bingo
  
  def self.generate_card
    bingo = ['BINGO'.chars]
    numbers = (1..75).each_slice(15).map{ |num| num.sample(5) }.transpose
    numbers[2][2] = ' '
    rows = bingo + numbers
    rows.map { |row|
      row.map{ |r|
        r.to_s.rjust(2)
      }.join(' | ')
    }.join("\n")
  end

end

puts Bingo.generate_card
