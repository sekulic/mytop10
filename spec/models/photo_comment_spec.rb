require 'rails_helper'

RSpec.describe PhotoComment, :type => :model do
 it "has a valid factory" do
    FactoryGirl.build(:photo_comment).should be_valid 
 end 
  
 it "is invalid without a name" do
   FactoryGirl.build(:photo_comment, name: nil).should_not be_valid 
 end  

 it "is invalid without a comment" do
   FactoryGirl.build(:photo_comment, comment: nil).should_not be_valid 
 end  

 it "is invalid without a comment" do
   FactoryGirl.build(:photo_comment, photo_post_id: nil).should_not be_valid 
 end  

 it { should belong_to(:photo_post) }
end
