class ProfileController < ApplicationController
	before_action :set_user
	def index
	end

	def uploads
		@myuploads = @user.videos.all
	end

	def favourites
		@favourites = @user.videos.all
	end

	private

	def set_user
		@user = User.find(current_user)
	end
end
