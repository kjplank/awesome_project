class Theme4 < ActiveRecord::Base

  validates :innovation, :presence => true
  validates :reason, :presence => true

  belongs_to :user

end
