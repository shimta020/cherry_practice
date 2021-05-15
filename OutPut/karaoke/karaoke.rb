# ruby ./OutPut/karaoke.karaoke.rb
class KaraokeMachine

  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
    scales = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
    @melody.split(/(\w#?)/).map{
            |m| /(\w#?)/.match?(m) ?
            scales[(scales.find_index(m) + amount) % scales.length] : m 
           }.join
  end
end