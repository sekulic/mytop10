require 'rails_helper'

RSpec.describe "PhotoPosts", :type => :request do
  describe "GET /photo_posts" do
    it "works! (now write some real specs)" do
      get photo_posts_path
      expect(response.status).to be(200)
    end
  end
end
