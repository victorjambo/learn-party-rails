class User < ApplicationRecord
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :videos
  has_many :comments
  mount_uploader :avatar, AvatarUploader
end
