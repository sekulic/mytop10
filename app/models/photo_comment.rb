class PhotoComment < ActiveRecord::Base
  belongs_to :photo_post
  validates :name, presence: true  
  validates :comment, presence: true  
  validates :photo_post_id, presence: true   
end
