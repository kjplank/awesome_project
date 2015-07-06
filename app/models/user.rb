class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :theme1s
  has_many :theme2s
  has_many :theme3s
  has_many :theme4s
  has_many :theme5s

end
