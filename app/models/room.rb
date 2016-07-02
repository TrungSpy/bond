class Room < ActiveRecord::Base
  belongs_to :invite
  has_many :messages
end
