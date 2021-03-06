class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    
    def index
        @users = User.all
    end
    
    def edit
    end
    
    def update
        respond_to do |format|
          if @user.update(user_params)
            format.html { redirect_to request.referer, notice: 'Video was successfully updated.' }
            format.json { render :show, status: :ok, location: request.referer }
          else
            format.html { render :edit }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
    end
    
    private
    
    def set_user
        @user = User.friendly.find(params[:id])
    end
    
    def user_params
        params.require(:user).permit(:username, :name, :bio, :avatar)
    end
end
