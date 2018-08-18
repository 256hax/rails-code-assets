class Pt::Participation < ApplicationRecord
  belongs_to :pt_event, class_name: 'Pt::Event'
  belongs_to :pt_member, class_name: 'Pt::Member'
end
