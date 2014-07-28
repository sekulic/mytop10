require 'rails_helper'

RSpec.describe PhotoPost, :type => :model do
 it "has a valid factory" do
    FactoryGirl.build(:photo_post).should be_valid 
 end 
 
 it "is invalid without a title" do
   FactoryGirl.build(:photo_post, title: nil).should_not be_valid 
 end  
 it "is invalid without a text10" do
   FactoryGirl.build(:photo_post, text10: nil).should_not be_valid 
 end 
 it "is invalid without a text9" do
   FactoryGirl.build(:photo_post, text9: nil).should_not be_valid 
 end 
 it "is invalid without a text8" do
   FactoryGirl.build(:photo_post, text8: nil).should_not be_valid 
 end 
 it "is invalid without a text7" do
   FactoryGirl.build(:photo_post, text7: nil).should_not be_valid 
 end 
 it "is invalid without a text6" do
   FactoryGirl.build(:photo_post, text6: nil).should_not be_valid 
 end 
 it "is invalid without a text5" do
   FactoryGirl.build(:photo_post, text5: nil).should_not be_valid 
 end 
 it "is invalid without a text4" do
   FactoryGirl.build(:photo_post, text4: nil).should_not be_valid 
 end 
 it "is invalid without a text3" do
   FactoryGirl.build(:photo_post, text3: nil).should_not be_valid 
 end      
 it "is invalid without a text2" do
   FactoryGirl.build(:photo_post, text2: nil).should_not be_valid 
 end      
 it "is invalid without a text1" do
   FactoryGirl.build(:photo_post, text1: nil).should_not be_valid 
 end        
 it "is invalid without a photo10" do
   FactoryGirl.build(:photo_post, photo10: nil).should_not be_valid 
 end 
 it "is invalid without a photo9" do
   FactoryGirl.build(:photo_post, photo9: nil).should_not be_valid 
 end 
 it "is invalid without a photo8" do
   FactoryGirl.build(:photo_post, photo8: nil).should_not be_valid 
 end 
 it "is invalid without a photo7" do
   FactoryGirl.build(:photo_post, photo7: nil).should_not be_valid 
 end 
 it "is invalid without a photo6" do
   FactoryGirl.build(:photo_post, photo6: nil).should_not be_valid 
 end 
 it "is invalid without a photo5" do
   FactoryGirl.build(:photo_post, photo5: nil).should_not be_valid 
 end 
 it "is invalid without a photo4" do
   FactoryGirl.build(:photo_post, photo4: nil).should_not be_valid 
 end 
 it "is invalid without a photo3" do
   FactoryGirl.build(:photo_post, photo3: nil).should_not be_valid 
 end      
 it "is invalid without a photo2" do
   FactoryGirl.build(:photo_post, photo2: nil).should_not be_valid 
 end      
 it "is invalid without a photo1" do
   FactoryGirl.build(:photo_post, photo1: nil).should_not be_valid 
 end 
 
 it { should validate_uniqueness_of(:title) }  
 it { should belong_to(:user) }
 it { should belong_to(:category) }
 it { should belong_to(:subcategory) }  
end
