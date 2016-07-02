# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Invite.destroy_all

# テング酒場 渋谷
Invite.create(
  lat: 35.6591244,
  lon: 139.696724,
  category: 1,
  status: 0
)

