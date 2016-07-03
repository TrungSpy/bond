class Message < ActiveRecord::Base
  belongs_to :room

  enum tag: {
    inviter: 0,
    joiner: 1
  }
end
