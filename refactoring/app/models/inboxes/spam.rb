class Inboxes::Spam < ApplicationRecord
  belongs_to :inbox

  validates :inbox_id, uniqueness: true
end
