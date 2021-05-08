# 正規表現参考ページ１　https://qiita.com/jnchito/items/893c887fbf19e17d3ff9

# text= <<-TEXT
# クープバゲットのパンは美味しかった。
# 今日はクープ バゲットさんに行きました。
# クープ　バゲットのパンは最高。
# ジャムおじさんのパン、ジャムが入ってた。
# また行きたいです。クープ・バゲット。
# クープ・バケットのパン、売り切れだった（><）
# TEXT

# p text.split(/\n/).grep(/クープ.?バ[ケゲ]ット/)

# 正規表現参考ページ２　https://qiita.com/jnchito/items/64c3fdc53766ac6f2008

# html = <<-HTML
# <select name="game_console">
# <option value="none"></option>
# <option value="wii_u" selected>Wii U</option>
# <option value="ps4">プレステ4</option>
# <option value="gb">ゲームボーイ</option>
# </select>
# HTML

# replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

# puts replaced

# <option value="([a-z0-9_]+)"(?: selected)?>(.*)<\/option>
# ↓リファクタリング
# <option value="(\w+)"(?: selected)?>(.*)<\/option>

# 正規表現参考ページ３　https://qiita.com/jnchito/items/6f0c885c1c4929092578

# 無駄な空白スペースやタブ文字を除去
# text = <<-TEXT
# def hello(name)
#   puts "Hello, \#{name}!"
# end

# hello('Alice')

# hello('Bob')

# hello('Carol')
# TEXT

# puts text.gsub(/^[ \t]+$/, '')
# 文末のみの場合
# puts text.gsub(/[ \t]+$/, '')

# hash_text =
# {
  #   japan:	'yen',
  #   america:'dollar',
  #   italy:     'euro'
  # }
  
  # puts hash_text.gsub(/:[ \t]*/, ': ')
  # ↓これでもいい
  # puts hash_text.gsub(/:\s*/, ': ')
  
  # text = <<-TEXT
  # Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
  # Feb 14 07:36:46 heroku/api:  Starting process ...
  # Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
  # Feb 14 07:36:50 heroku/scheduler.7625:  State ...
  # Feb 14 07:36:54 heroku/router:  at=info method=...
  # Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
  # Feb 14 07:36:54 app/web.1:  Completed 200 ...
  # TEXT
  
  # puts text.gsub(/^.+heroku\/(api|scheduler).+\n/, '')
  
  
  # 正規表現参考ページ４　https://qiita.com/jnchito/items/b0839f4f4651c29da408

  