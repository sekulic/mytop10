class VideoComment < ActiveRecord::Base
  belongs_to :video_post
  validates :name, presence: true  
  validates :comment, presence: true  
  validates :video_post_id, presence: true 
end
