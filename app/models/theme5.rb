class Theme5 < ActiveRecord::Base

  validates :innovation, :presence => true
  validates :reason, :presence => true

  belongs_to :user

  mount_uploader :image, ImageUploader

end
