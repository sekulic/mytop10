class VideoPostsController < ApplicationController
  include PhotoPostsHelper
  include ApplicationHelper  
  before_action :set_video_post, only: [:show, :edit, :update, :destroy]
  before_filter :access, :except => :show
  # GET /video_posts
  # GET /video_posts.json
  def index
      @video_posts = VideoPost.paginate(:page => params[:page]).order('created_at DESC')
  end

  # GET /video_posts/1
  # GET /video_posts/1.json
  def show
    @video_comment = VideoComment.new
    @video_comments = VideoComment.where(:video_post_id => @video_post.id).order("created_at DESC")
    @video_posts = VideoPost.where(:category_id => @video_post.category_id)
    @photo_posts = PhotoPost.where(:category_id => @video_post.category_id)
    @filter = sort_for_show(@video_posts, @photo_posts)
    @filter.delete_if {|x| x[:id] == @video_post.id }
    @posts =  @filter        
  end

  # GET /video_posts/new
  def new
    @categories = Category.all.map{|u| [ u.name, u.id ] }
    @video_post = VideoPost.new
  end

  # GET /video_posts/1/edit
  def edit
    @categories = Category.all.map{|u| [ u.name, u.id ] }
  end

  # POST /video_posts
  # POST /video_posts.json
  def create
    @categories = Category.all.map{|u| [ u.name, u.id ] }
    @video_post = VideoPost.new(video_post_params.merge(:user_id => current_user.id))

    respond_to do |format|
      if @video_post.save
        format.html { redirect_to @video_post, notice: 'Video post was successfully created.' }
        format.json { render :show, status: :created, location: @video_post }
      else
        format.html { render :new }
        format.json { render json: @video_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_posts/1
  # PATCH/PUT /video_posts/1.json
  def update
    respond_to do |format|
      if @video_post.update(video_post_params)
        format.html { redirect_to @video_post, notice: 'Video post was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_post }
      else
        format.html { render :edit }
        format.json { render json: @video_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_posts/1
  # DELETE /video_posts/1.json
  def destroy
    @video_post.destroy
    respond_to do |format|
      format.html { redirect_to video_posts_url, notice: 'Video post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_post
      @video_post = VideoPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_post_params
      params.require(:video_post).permit(:title, :text10, :text9, :text8, :text7, :text6, :text5, :text4, :text3, :text2, :text1, :link10, :link9, :link8, :link7, :link6, :link5, :link4, :link3, :link2, :link1, :category_id, :subcategory_id)
    end
end
