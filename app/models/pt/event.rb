class Pt::Event < ApplicationRecord
  belongs_to :pt_trainer, class_name: 'Pt::Trainer'
end
