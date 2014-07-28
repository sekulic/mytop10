class PhotoCommentsController < ApplicationController
  include ApplicationHelper  
  before_filter :access, :only => :destroy
  def create
    @photo_comment = PhotoComment.new(photo_comment_params)
    respond_to do |format|
      if @photo_comment.save
        format.js { }
      else
        format.js { }
      end
    end
  end  
  def destroy
    ppid = params[:format].to_i
    @photo_post_comment = PhotoComment.find(ppid)
    @photo_post_comment.destroy
  end 
  def photo_comment_params
    params.require(:photo_comment).permit(:name, :comment, :photo_post_id)
  end
end
