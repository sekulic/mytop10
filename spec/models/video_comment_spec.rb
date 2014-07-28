require 'rails_helper'

RSpec.describe VideoComment, :type => :model do
 it "has a valid factory" do
    FactoryGirl.build(:video_comment).should be_valid 
 end 
  
 it "is invalid without a name" do
   FactoryGirl.build(:video_comment, name: nil).should_not be_valid 
 end  

 it "is invalid without a comment" do
   FactoryGirl.build(:video_comment, comment: nil).should_not be_valid 
 end  

 it "is invalid without a comment" do
   FactoryGirl.build(:video_comment, video_post_id: nil).should_not be_valid 
 end  

 it { should belong_to(:video_post) }
end
