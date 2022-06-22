class Wig < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :likes
  has_many :liking_users, through: :likes, source: :user
  has_one_attached :photo

end
