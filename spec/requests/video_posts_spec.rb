require 'rails_helper'

RSpec.describe "VideoPosts", :type => :request do
  describe "GET /video_posts" do
    it "works! (now write some real specs)" do
      get video_posts_path
      expect(response.status).to be(200)   
    end
  end
end
