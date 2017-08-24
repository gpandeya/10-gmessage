class Message < ApplicationRecord
  belongs_to :sender, foreign_key: 'from_id', class_name: "User"
  belongs_to :receiver, foreign_key: 'to_id', class_name: "User"
end