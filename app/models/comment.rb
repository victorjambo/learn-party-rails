class Comment < ApplicationRecord
  belongs_to :video
  belongs_to :user
  validates :body, presence: true
end
