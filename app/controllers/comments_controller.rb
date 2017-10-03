class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]

	def index
    @comments = Comment.all
  end

	def new
    @comment = current_user.comments.build
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
  	@comment = current_user.comments.build(comment_params)
    @comment.video_id = params[:video_id]
    if @comment.save
    	redirect_to request.referrer
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.present?
    	@comment.destroy
    end
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

end
