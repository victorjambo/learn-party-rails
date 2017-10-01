class Video < ApplicationRecord
	acts_as_taggable
	acts_as_votable
	is_impressionable
	extend FriendlyId
  friendly_id :title, use: :slugged

	def url=(url)
    url.nil? ? write_attribute(:url, url.scan(/.*=(.*)/)[0][0]) : url
  end
end
