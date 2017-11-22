class WelcomeController < ApplicationController
  def home
  	@videos = Video.all
  	@recent_videos = Video.take 3
  	@most_viewed_videos = Video.take 3
  	@popular_video = Video.order(:created_at)
  	@tags = ActsAsTaggableOn::Tag.where(taggings_count: 1)
  	@user = User.all
  end
end
