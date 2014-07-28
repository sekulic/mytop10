class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :video_posts
  has_many :photo_posts   
  validates :name, presence: true  
  validates :category_id, presence: true      
end
