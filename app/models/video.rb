class Video < ApplicationRecord
	acts_as_taggable
	acts_as_votable
	is_impressionable
	extend FriendlyId
	friendly_id :title, use: :slugged
	belongs_to :user
	has_many :comments, dependent: :destroy

	# def url=(url)
	# 	url.nil? ? write_attribute(:url, url.scan(/.*=(.*)/)[0][0]) : url
	# end
end
