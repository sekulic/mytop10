require "rails_helper"

RSpec.describe VideoPostsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/video_posts").to route_to("video_posts#index")
    end

    it "routes to #new" do
      expect(:get => "/video_posts/new").to route_to("video_posts#new")
    end

    it "routes to #show" do
      expect(:get => "/video_posts/1").to route_to("video_posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/video_posts/1/edit").to route_to("video_posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/video_posts").to route_to("video_posts#create")
    end

    it "routes to #update" do
      expect(:put => "/video_posts/1").to route_to("video_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/video_posts/1").to route_to("video_posts#destroy", :id => "1")
    end

  end
end
