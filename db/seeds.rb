# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

case ENV['SECTION']
  when "2"
    comics = [
      { title: 'ワンピース ONE PIECE', genre: '少年漫画 海賊 冒険ファンタジー バトル', serialization_started_year: 1997, serialization_end_year: nil, publisher: '週刊少年ジャンプ' },
      { title: 'ゴルゴ13', genre: 'ハードボイルド 劇画', serialization_started_year: 1968, serialization_end_year: nil, publisher: 'ビッグコミック' },
      { title: 'ドラゴンボール', genre: '少年漫画 冒険 バトル 格闘技 SF漫画 ファンタジー', serialization_started_year: 1984, serialization_end_year: 1995, publisher: '週刊少年ジャンプ' },
      { title: 'ナルトNARUTO', genre: '少年漫画 忍者 バトル漫画', serialization_started_year: 1999, serialization_end_year: 2014, publisher: '週刊少年ジャンプ' },
      { title: '名探偵コナン', genre: '推理漫画 少年漫画', serialization_started_year: 1994, serialization_end_year: nil, publisher: '週刊少年サンデー' },
      { title: 'こちら葛飾区亀有公園前派出所', genre: '少年漫画 コメディ ギャグ アクション', serialization_started_year: 1976, serialization_end_year: 2016, publisher: '週刊少年ジャンプ' },
      { title: '美味しんぼ', genre: 'グルメ漫画', serialization_started_year: 1983, serialization_end_year: nil, publisher: 'ビッグコミックスピリッツ' },
      { title: 'スラムダンクSLAMDUNK', genre: 'スポーツ漫画（バスケットボール 学園漫画 少年漫画', serialization_started_year: 1990, serialization_end_year: 1996, publisher: '週刊少年ジャンプ' },
      { title: 'BLEACH ブリーチ', genre: '少年漫画 学園漫画 剣劇 バトル漫画 ファンタジー漫画', serialization_started_year: 2001, serialization_end_year: 2016, publisher: '週刊少年ジャンプ' },
      { title: 'ドラえもん', genre: '児童漫画 少年漫画 SF漫画 ギャグ漫画', serialization_started_year: 1969, serialization_end_year: 1996, publisher: 'コロコロコミック' },
      { title: '鉄腕アトム', genre: 'SF', serialization_started_year: 1952, serialization_end_year: 1968, publisher: '少年' },
      { title: 'ジョジョの奇妙な冒険', genre: 'アクション アドベンチャー 少年漫画 青年漫画', serialization_started_year: 1986, serialization_end_year: 2004, publisher: '週刊少年ジャンプ' },
      { title: 'タッチ', genre: '野球漫画 恋愛 スポーツ', serialization_started_year: 1981, serialization_end_year: 1986, publisher: '週刊少年サンデー' },
      { title: '金田一少年の事件簿', genre: '推理漫画 少年漫画 学園漫画', serialization_started_year: 1992, serialization_end_year: 2017, publisher: '週刊少年マガジン' },
      { title: '北斗の拳', genre: 'バトル 青年向け少年漫画', serialization_started_year: 1983, serialization_end_year: 1988, publisher: '週刊少年ジャンプ' },
      { title: '進撃の巨人', genre: '少年漫画 ダーク・ファンタジー アクション バトル 風刺', serialization_started_year: 2009, serialization_end_year: nil, publisher: '別冊少年マガジン' },
      { title: 'はじめの一歩', genre: 'スポーツ漫画 少年漫画 バトル', serialization_started_year: 1989, serialization_end_year: nil, publisher: '週刊少年マガジン' },
      { title: 'サザエさん', genre: '家庭漫画', serialization_started_year: 1946, serialization_end_year: 1974, publisher: '朝日新聞' },
      { title: 'バガボンド', genre: '剣劇 歴史漫画 バトル', serialization_started_year: 1998, serialization_end_year: nil, publisher: '週刊モーニング' },
      { title: '鬼滅の刃', genre: '少年漫画 時代劇 剣劇 ダーク・ファンタジー 伝奇ロマン バトル', serialization_started_year: 2016, serialization_end_year: 2020, publisher: '週刊少年ジャンプ' },
      { title: 'キン肉マン,', genre: '少年漫画 ギャグ プロレス バトル', serialization_started_year: 1979, serialization_end_year: 1987, publisher: '週刊少年ジャンプ' },
      { title: 'バキBAKI', genre: '少年漫画 バトル', serialization_started_year: 1999, serialization_end_year: 2005, publisher: '週刊少年チャンピオン' },
      { title: 'HUNTER×HUNTERハンター×ハンター', genre: 'ダーク・ファンタジー SF バトル 少年漫画', serialization_started_year: 1998, serialization_end_year: nil, publisher: '週刊少年ジャンプ' },
      { title: 'るろうに剣心', genre: '少年漫画 歴史 剣劇 時代劇', serialization_started_year: 1994, serialization_end_year: 1999, publisher: '週刊少年ジャンプ' },
      { title: '三国志', genre: '歴史フィクション 三国時代（中国史） 軍事・政治 少年漫画', serialization_started_year: 1971, serialization_end_year: 1987, publisher: '希望の友' },
      { title: 'キャプテン翼', genre: '少年漫画 サッカー漫画 スポーツ 学園漫画', serialization_started_year: 1981, serialization_end_year: 1988, publisher: '週刊少年ジャンプ' },
      { title: '鋼の錬金術師', genre: 'ダークファンタジー SF スチームパンク 少年漫画 バトルアクション漫画 冒険漫画', serialization_started_year: 2001, serialization_end_year: 2010, publisher: 'ガンガンコミックス' },
      { title: 'FAIRYTAILフェアリーテイル', genre: 'ファンタジー 少年漫画 バトル', serialization_started_year: 2006, serialization_end_year: 2017, publisher: '週刊少年マガジン' },
      { title: 'キングダム', genre: '伝奇 武侠 中国時代劇 戦国時代(中国) 青年漫画', serialization_started_year: 2006, serialization_end_year: nil, publisher: '週刊ヤングジャンプ' },
      { title: '花より男子', genre: '学園漫画 恋愛', serialization_started_year: 1992, serialization_end_year: 2004, publisher: 'マーガレット' },
      { title: 'テニスの王子様', genre: 'テニス 少年漫画 スポーツ ', serialization_started_year: 1999, serialization_end_year: 2008, publisher: '週刊少年ジャンプ' },
      { title: 'H2', genre: '少年漫画 野球漫画 恋愛漫画 学園漫画', serialization_started_year: 1992, serialization_end_year: 1999, publisher: '週刊少年サンデー' },
      { title: 'BAD BOYS', genre: '暴走族漫画 ヤンキー漫画　バトル', serialization_started_year: 1988, serialization_end_year: 1996, publisher: 'ヤングキング' },
      { title: '銀魂 ぎんたま', genre: 'SF 時代劇 ギャグ漫画 バトル漫画', serialization_started_year: 2004, serialization_end_year: 2018, publisher: '週刊少年ジャンプ' },
      { title: 'クレヨンしんちゃん', genre: 'ギャグ漫画 青年漫画', serialization_started_year: 1990, serialization_end_year: 2010, publisher: '漫画アクション' }
    ]
  when "3"
    comics = [
      { title: 'ワンピース ONE PIECE', genre: '少年漫画 海賊 冒険ファンタジー バトル', serialization_started_year: 1997, serialization_end_year: nil, publisher: '週刊少年ジャンプ' },
    ]

    questions = [
      { content: '連載は週刊少年ジャンプ？', algorithm: 'publisher_match', eval_value: '週刊少年ジャンプ' },
      { content: '海賊が関係してますか？', algorithm: 'genre_match', eval_value: '海賊' }
    ]
  when "4-2"
    comics = [
      { title: 'ワンピース ONE PIECE', genre: '少年漫画 海賊 冒険ファンタジー バトル', serialization_started_year: 1997, serialization_end_year: nil, publisher: '週刊少年ジャンプ' },
      { title: 'ドラゴンボール', genre: '少年漫画 冒険 バトル 格闘技 SF漫画 ファンタジー', serialization_started_year: 1984, serialization_end_year: 1995, publisher: '週刊少年ジャンプ' },
    ]

    questions = [
      { content: '連載終了してますか？', algorithm: 'serialization_end', eval_value: nil },
    ]
  when "4-5"
    comics = [
      { title: 'ワンピース ONE PIECE', genre: '少年漫画 海賊 冒険ファンタジー バトル', serialization_started_year: 1997, serialization_end_year: nil, publisher: '週刊少年ジャンプ' },
      { title: 'ゴルゴ13', genre: 'ハードボイルド 劇画', serialization_started_year: 1968, serialization_end_year: nil, publisher: 'ビッグコミック' },
    ]

    questions = [
      { content: '連載終了してますか？', algorithm: 'serialization_end', eval_value: nil },
      { content: '連載は週刊少年ジャンプ？', algorithm: 'publisher_match', eval_value: '週刊少年ジャンプ' },
    ]
end


if comics.present?
  comics.each do |comic|
    Comic.create!(comic)
  end
end


if questions.present?
  questions.each do |question|
    Question.create!(question)
  end
end
