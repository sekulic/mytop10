class VideoPost < ActiveRecord::Base
  self.per_page = 15
  has_many :video_comments  
  belongs_to :category  
  belongs_to :subcategory
  belongs_to :user
  validates :title, presence: true  
  validates :text10, presence: true  
  validates :text9, presence: true    
  validates :text8, presence: true  
  validates :text7, presence: true
  validates :text6, presence: true  
  validates :text5, presence: true
  validates :text4, presence: true  
  validates :text3, presence: true
  validates :text2, presence: true  
  validates :text1, presence: true
  validates :link10, presence: true  
  validates :link9, presence: true    
  validates :link8, presence: true  
  validates :link7, presence: true
  validates :link6, presence: true  
  validates :link5, presence: true
  validates :link4, presence: true  
  validates :link3, presence: true
  validates :link2, presence: true  
  validates :link1, presence: true 
  validates_uniqueness_of :title   
end
