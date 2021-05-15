# ruby ./OutPut/karaoke.karaoke.rb
SCALE = %w(A A# B C C# D D# E F F# G G#)
class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
    @melody.split(/(\w#?)/).map { |m|
      /(\w#?)/.match?(m) ? scales[(scales.find_index(m) + amount) % scales.size] : m
    }.join
  end

end