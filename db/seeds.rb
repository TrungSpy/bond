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

# 目黒 銀角
Invite.create(
  lat: 35.634233,
  lon: 139.714878,
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


# 目黒 土間土間
Invite.create(
  lat: 35.634678,
  lon: 139.716005,
  category: 0,
  status: 0
)

## カラオケ
# カラオケの鉄人+渋谷道玄坂店
Invite.create(
  lat: 35.6583386,
  lon: 139.6957584,
  category: 1,
  status: 0
)

