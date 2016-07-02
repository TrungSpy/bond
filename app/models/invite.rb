class Invite < ActiveRecord::Base
  acts_as_mappable(default_units: :kms,
                   default_formula: :sphere,
                   distance_field_name: :distance,
                   lat_column_name: :lat,
                   lng_column_name: :lon)

  enum status: {
    cancelled: -1,
    waiting: 0,
    inviting: 1,
    succeeded: 2
  }

  enum category: {
    beer: 0,
    sushi: 1,
    wine: 2,
    cocktail: 3,
    karaoke: 4,
    juice: 5,
    meat: 6,
    donut: 7,
    coffee: 8
  }
end
