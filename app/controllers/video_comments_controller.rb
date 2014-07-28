class VideoCommentsController < ApplicationController
  include ApplicationHelper  
  before_filter :access, :only => :destroy
  def create
    @video_comment = VideoComment.new(video_comment_params)
    respond_to do |format|
      if @video_comment.save
        format.js { }
      else
        format.js { }
      end
    end
  end  
  
  def destroy
    vpid = params[:format].to_i    
    @video_post_comment = VideoComment.find(vpid)
    @video_post_comment.destroy
  end
 
  def video_comment_params
    params.require(:video_comment).permit(:name, :comment, :video_post_id)
  end  
end
