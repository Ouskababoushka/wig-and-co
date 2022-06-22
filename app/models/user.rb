class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :wigs
  has_many :requests
  has_many :likes
  has_many :liked_wigs, through: :likes, source: :wigs
end
