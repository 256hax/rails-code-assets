class Pt::Member < ApplicationRecord
  mount_uploader :image, ImagesUploader
end
