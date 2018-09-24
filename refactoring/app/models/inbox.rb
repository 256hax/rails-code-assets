class Inbox < ApplicationRecord
  has_one :inboxes_spam, class_name: 'Inboxes::Spam', dependent: :destroy
end
