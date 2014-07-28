require 'rails_helper'

RSpec.describe Subcategory, :type => :model do
 it "has a valid factory" do
    FactoryGirl.build(:subcategory).should be_valid 
 end 
 
 it "is invalid without a name" do
   FactoryGirl.build(:subcategory, name: nil).should_not be_valid 
 end  

 it "is invalid without a category_id" do
   FactoryGirl.build(:subcategory, category_id: nil).should_not be_valid 
 end  
 it { should belong_to(:category) }
 it { should have_many(:video_posts) } 
end
