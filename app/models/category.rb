class Category < ActiveRecord::Base
  has_many :subcategories
  has_many :video_posts
  has_many :photo_posts
  validates :name, presence: true  
end
