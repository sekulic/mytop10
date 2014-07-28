class PhotoPost < ActiveRecord::Base
  has_many :photo_comments    
  belongs_to :category  
  belongs_to :subcategory
  belongs_to :user
  validates_presence_of :title, :text10, :text9, :text8, :text7, :text6, :text5, :text4, :text3, :text2, :text1
  validates_uniqueness_of :title 
  validates :photo10, :photo9, :photo8, :photo7, :photo6, :photo5, :photo4, :photo3, :photo2, :photo1, :attachment_presence => true
  has_attached_file :photo10, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo10, :content_type => /\Aimage\/.*\Z/            
  has_attached_file :photo9, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo9, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo8, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo8, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo7, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo7, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo6, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo6, :content_type => /\Aimage\/.*\Z/      
  has_attached_file :photo5, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo5, :content_type => /\Aimage\/.*\Z/            
  has_attached_file :photo4, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo4, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo3, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo3, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo2, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo2, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo1, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo1, :content_type => /\Aimage\/.*\Z/ 
end
