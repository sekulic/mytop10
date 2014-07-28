require 'rails_helper'

RSpec.describe "video_posts/edit", :type => :view do
  before(:each) do
    @video_post = assign(:video_post, VideoPost.create!(
      :title => "MyString",
      :text10 => "MyText",
      :text9 => "MyText",
      :text8 => "MyText",
      :text7 => "MyText",
      :text6 => "MyText",
      :text5 => "MyText",
      :text4 => "MyText",
      :text3 => "MyText",
      :text2 => "MyText",
      :text1 => "MyText",
      :link10 => "MyText",
      :link9 => "MyText",
      :link8 => "MyText",
      :link7 => "MyText",
      :link6 => "MyText",
      :link5 => "MyText",
      :link4 => "MyText",
      :link3 => "MyText",
      :link2 => "MyText",
      :link1 => "MyText",
      :category_id => 1,
      :subcategory_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit video_post form" do
    render

    assert_select "form[action=?][method=?]", video_post_path(@video_post), "post" do

      assert_select "input#video_post_title[name=?]", "video_post[title]"

      assert_select "textarea#video_post_text10[name=?]", "video_post[text10]"

      assert_select "textarea#video_post_text9[name=?]", "video_post[text9]"

      assert_select "textarea#video_post_text8[name=?]", "video_post[text8]"

      assert_select "textarea#video_post_text7[name=?]", "video_post[text7]"

      assert_select "textarea#video_post_text6[name=?]", "video_post[text6]"

      assert_select "textarea#video_post_text5[name=?]", "video_post[text5]"

      assert_select "textarea#video_post_text4[name=?]", "video_post[text4]"

      assert_select "textarea#video_post_text3[name=?]", "video_post[text3]"

      assert_select "textarea#video_post_text2[name=?]", "video_post[text2]"

      assert_select "textarea#video_post_text1[name=?]", "video_post[text1]"

      assert_select "textarea#video_post_link10[name=?]", "video_post[link10]"

      assert_select "textarea#video_post_link9[name=?]", "video_post[link9]"

      assert_select "textarea#video_post_link8[name=?]", "video_post[link8]"

      assert_select "textarea#video_post_link7[name=?]", "video_post[link7]"

      assert_select "textarea#video_post_link6[name=?]", "video_post[link6]"

      assert_select "textarea#video_post_link5[name=?]", "video_post[link5]"

      assert_select "textarea#video_post_link4[name=?]", "video_post[link4]"

      assert_select "textarea#video_post_link3[name=?]", "video_post[link3]"

      assert_select "textarea#video_post_link2[name=?]", "video_post[link2]"

      assert_select "textarea#video_post_link1[name=?]", "video_post[link1]"

      assert_select "input#video_post_category_id[name=?]", "video_post[category_id]"

      assert_select "input#video_post_subcategory_id[name=?]", "video_post[subcategory_id]"

      assert_select "input#video_post_user_id[name=?]", "video_post[user_id]"
    end
  end
end
