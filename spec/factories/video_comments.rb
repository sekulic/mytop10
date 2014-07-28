# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video_comment do
    name "MyString"
    comment "MyText"
    video_post_id 1
  end
end
