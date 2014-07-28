require 'rails_helper'

RSpec.describe VideoPost, :type => :model do
 it "has a valid factory" do
    FactoryGirl.build(:video_post).should be_valid 
 end 
  
 it "is invalid without a title" do
   FactoryGirl.build(:video_post, title: nil).should_not be_valid 
 end  
 it "is invalid without a text10" do
   FactoryGirl.build(:video_post, text10: nil).should_not be_valid 
 end 
 it "is invalid without a text9" do
   FactoryGirl.build(:video_post, text9: nil).should_not be_valid 
 end 
 it "is invalid without a text8" do
   FactoryGirl.build(:video_post, text8: nil).should_not be_valid 
 end 
 it "is invalid without a text7" do
   FactoryGirl.build(:video_post, text7: nil).should_not be_valid 
 end 
 it "is invalid without a text6" do
   FactoryGirl.build(:video_post, text6: nil).should_not be_valid 
 end 
 it "is invalid without a text5" do 
   FactoryGirl.build(:video_post, text5: nil).should_not be_valid 
 end 
 it "is invalid without a text4" do
   FactoryGirl.build(:video_post, text4: nil).should_not be_valid 
 end 
 it "is invalid without a text3" do
   FactoryGirl.build(:video_post, text3: nil).should_not be_valid 
 end      
 it "is invalid without a text2" do
   FactoryGirl.build(:video_post, text2: nil).should_not be_valid 
 end      
 it "is invalid without a text1" do
   FactoryGirl.build(:video_post, text1: nil).should_not be_valid 
 end        
 it "is invalid without a link10" do
   FactoryGirl.build(:video_post, link10: nil).should_not be_valid 
 end 
 it "is invalid without a link9" do
   FactoryGirl.build(:video_post, link9: nil).should_not be_valid 
 end 
 it "is invalid without a link8" do
   FactoryGirl.build(:video_post, link8: nil).should_not be_valid 
 end 
 it "is invalid without a link7" do
   FactoryGirl.build(:video_post, link7: nil).should_not be_valid 
 end 
 it "is invalid without a link6" do
   FactoryGirl.build(:video_post, link6: nil).should_not be_valid 
 end 
 it "is invalid without a link5" do
   FactoryGirl.build(:video_post, link5: nil).should_not be_valid 
 end 
 it "is invalid without a link4" do
   FactoryGirl.build(:video_post, link4: nil).should_not be_valid 
 end 
 it "is invalid without a link3" do
   FactoryGirl.build(:video_post, link3: nil).should_not be_valid 
 end      
 it "is invalid without a link2" do
   FactoryGirl.build(:video_post, link2: nil).should_not be_valid 
 end      
 it "is invalid without a link1" do
   FactoryGirl.build(:video_post, link1: nil).should_not be_valid 
 end 
 
 it { should validate_uniqueness_of(:title) }  
 it { should belong_to(:user) }
 it { should belong_to(:category) }
 it { should belong_to(:subcategory) } 
end
