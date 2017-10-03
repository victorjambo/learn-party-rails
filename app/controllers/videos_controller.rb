class VideosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_video, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  def index
    if params[:tag]
      @videos = Video.tagged_with(params[:tag])
    else
      @videos = Video.all
    end
  end

  def show
    impressionist(@video)
    @comment = Comment.new
    @comment.video_id = @video.id
    @comments = @video.comments
  end

  def new
    @video = Video.new
  end

  def edit
  end

  def create
    @video = current_user.videos.build(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @video.upvote_from current_user
    redirect_to video_path
  end

  def downvote
    @video.downvote_from current_user
    redirect_to video_path
  end

  private
    def set_video
      @video = Video.friendly.find(params[:id])
    end

    def video_params
      params.require(:video).permit(:title, :url, :description, :tag_list)
    end
end
