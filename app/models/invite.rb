class Invite < ActiveRecord::Base
  enum status: { cancelled: -1, inviting: 0, succeeded: 1 }
  enum category: { beer: 0, karaoke: 1 }
end
