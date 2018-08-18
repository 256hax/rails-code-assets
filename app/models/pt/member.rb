class Pt::Member < ApplicationRecord
  mount_uploader :image, ImagesUploader

  has_many  :pt_participations, class_name: 'Pt::Participation', foreign_key: :pt_member_id, :dependent => :destroy
  has_many  :pt_events, class_name: 'Pt::Event', :through => :pt_participations
end
