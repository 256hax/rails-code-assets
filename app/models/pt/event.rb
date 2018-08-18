class Pt::Event < ApplicationRecord
  belongs_to :pt_trainer, class_name: 'Pt::Trainer'
  has_many   :pt_participations, class_name: 'Pt::Participation', foreign_key: :pt_event_id, :dependent => :destroy
  has_many   :pt_members, class_name: 'Pt::Member',  :through => :pt_participations
end
