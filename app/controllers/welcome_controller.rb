class WelcomeController < ApplicationController
  def home
  	@videos = Video.all
  	@recent_videos = Video.take 3
  	@most_viewed_videos = Video.take 3
  end
end
