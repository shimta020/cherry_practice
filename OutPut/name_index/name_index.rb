# IN: ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
# OUT: [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ]

class NameIndex
  def initialize(name)
    @name = name
  end

  INDEX = {
    ア: ["ア", "ィ", "イ", "ゥ", "ウ", "ェ", "エ", "ォ", "オ"],
    カ: ["カ", "ガ", "キ", "ギ", "ク", "グ", "ケ", "ゲ", "コ", "ゴ"],
    サ: ["サ", "ザ", "シ", "ジ", "ス", "ズ", "セ", "ゼ", "ソ", "ゾ"],
    タ: ["タ", "ダ", "チ", "ヂ", "ッ", "ツ", "ヅ", "テ", "デ", "ト", "ド"],
    ナ: ["ナ", "ニ", "ヌ", "ネ", "ノ"],
    ハ: ["ハ", "バ", "パ", "ヒ", "ビ", "ピ", "フ", "ブ", "プ", "ヘ", "ベ", "ペ", "ホ", "ボ", "ポ"],
    マ: ["マ", "ミ", "ム", "メ", "モ"],
    ヤ: ["ャ", "ヤ", "ュ", "ユ", "ョ", "ヨ"],
    ラ: ["ラ", "リ", "ル", "レ", "ロ"],
    ワ: ["ヮ", "ワ", "ヰ", "ヱ", "ヲ", "ン"]
  }

  # def create_index
  #   return if @name.empty?

  #   INDEX.map do |key, value|
  #     index_names = @name.select{|name| value.include?(name.chr)}.sort
  #     [key.to_s, index_names] unless index_names.empty?
  #   end.compact
  # end

  def create_index
    return if @name.empty?

    @name.sort.group_by { |name|
      INDEX.find(['Others']){|_, value| value.include?(name[0])}.first.to_s
    }.to_a
  end

end

name = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
ni = NameIndex.new(name)
p ni.create_index