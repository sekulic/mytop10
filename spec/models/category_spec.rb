require 'rails_helper'

RSpec.describe Category, :type => :model do
 it "has a valid factory" do
    FactoryGirl.build(:category).should be_valid 
 end 
 
 it "is invalid without a name" do
   FactoryGirl.build(:category, name: nil).should_not be_valid 
 end  
 it { should have_many(:subcategories) }
 it { should have_many(:video_posts) } 
end

