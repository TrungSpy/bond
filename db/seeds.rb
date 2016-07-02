# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Invite.destroy_all

## ビール
# テング酒場 渋谷
Invite.create(
  lat: 35.658085,
  lon: 139.699971,
  category: 0,
  status: 0
)

# ぶっちぎり酒場+渋谷スペイン坂店
Invite.create(
  lat: 35.661159,
  lon: 139.698707,
  category: 0,
  status: 0
)

# 北海酒場+静内
Invite.create(
  lat: 35.63487,
  lon: 139.7105653,
  category: 0,
  status: 0
)

# 目黒さんまセンター
Invite.create(
  lat: 35.634277,
  lon: 139.717679,
  category: 0,
  status: 0
)

# 炎丸酒場
Invite.create(
  lat: 35.626954,
  lon: 139.721345,
  category: 0,
  status: 0
)

###
### 寿司
###
#回し寿司 活
Invite.create(
  lat: 35.633424,
  lon: 139.716067,
  category: 1,
  status: 0
)

# 鮨処佐藤
Invite.create(
  lat: 35.630878,
  lon: 139.709629,
  category: 1,
  status: 0
)

###
### ワイン
###
#
# 椿
Invite.create(
  lat: 35.634558,
  lon: 139.718277,
  category: 2,
  status: 0
)

###
### カクテル
###
# BAR

Invite.create(
  lat: 35.647496,
  lon: 139.698707,
  category: 3,
  status: 0
)

###
### カラオケ
###
# カラオケの鉄人+渋谷道玄坂店
Invite.create(
  lat: 35.6583386,
  lon: 139.6957584,
  category: 4,
  status: 0
)

###
### 肉
###
# ギュービッグ
Invite.create(
  lat: 35.633814,
  lon: 139.713767,
  category: 6,
  status: 0
)

###
### ドーナッツ
###
# はらドーナッツ
Invite.create(
  lat: 35.630830,
  lon: 139.702823,
  category: 7,
  status: 0
)

###
### コーヒー
###
# パンドラ
Invite.create(
  lat: 35.630917,
  lon: 139.714024,
  category: 8,
  status: 0
)

# ベランギ
Invite.create(
  lat: 35.634039,
  lon: 139.720354,
  category: 8,
  status: 0
)
