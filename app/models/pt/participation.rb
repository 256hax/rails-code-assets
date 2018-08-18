class Pt::Participation < ApplicationRecord
  belongs_to :pt_event
  belongs_to :pt_member
end
