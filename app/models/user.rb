class User < ActiveRecord::Base

  has_many :theme1s
  has_many :theme2s
  has_many :theme3s
  has_many :theme4s
  has_many :theme5s

end
