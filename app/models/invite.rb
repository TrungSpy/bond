class Invite < ActiveRecord::Base
  acts_as_mappable(default_units: :kms,
                   default_formula: :sphere,
                   distance_field_name: :distance,
                   lat_column_name: :lat,
                   lng_column_name: :lon)

  enum status: { cancelled: -1, inviting: 0, succeeded: 1 }
  enum category: { beer: 0, karaoke: 1 }
end
