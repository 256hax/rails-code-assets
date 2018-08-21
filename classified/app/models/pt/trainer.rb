class Pt::Trainer < ApplicationRecord
  mount_uploader :image, ImagesUploader

  has_many :pt_events, class_name: 'Pt::Event', foreign_key: :pt_trainer_id
end
