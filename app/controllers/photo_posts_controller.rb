class PhotoPostsController < ApplicationController
  include ApplicationHelper
  before_action :set_photo_post, only: [:show, :edit, :update, :destroy]
  before_filter :access, :except => :show
  # GET /photo_posts
  # GET /photo_posts.json
  def index
    @photo_posts = PhotoPost.paginate(:page => params[:page]).order('created_at DESC')    
  end

  # GET /photo_posts/1
  # GET /photo_posts/1.json
  def show
    @photo_comment = PhotoComment.new
    @photo_comments = PhotoComment.where(:photo_post_id => @photo_post.id).order("created_at DESC")    
  end

  # GET /photo_posts/new
  def new
    @categories = Category.all.map{|u| [ u.name, u.id ] }    
    @photo_post = PhotoPost.new
  end

  # GET /photo_posts/1/edit
  def edit
    @categories = Category.all.map{|u| [ u.name, u.id ] }    
  end

  # POST /photo_posts
  # POST /photo_posts.json
  def create
    @categories = Category.all.map{|u| [ u.name, u.id ] }
    @photo_post = PhotoPost.new(photo_post_params.merge(:user_id => current_user.id))    

    respond_to do |format|
      if @photo_post.save
        format.html { redirect_to @photo_post, notice: 'Photo post was successfully created.' }
        format.json { render :show, status: :created, location: @photo_post }
      else
        format.html { render :new }
        format.json { render json: @photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_posts/1
  # PATCH/PUT /photo_posts/1.json
  def update
    respond_to do |format|
      if @photo_post.update(photo_post_params)
        format.html { redirect_to @photo_post, notice: 'Photo post was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_post }
      else
        format.html { render :edit }
        format.json { render json: @photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_posts/1
  # DELETE /photo_posts/1.json
  def destroy
    @photo_post.destroy
    respond_to do |format|
      format.html { redirect_to photo_posts_url, notice: 'Photo post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_post
      @photo_post = PhotoPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_post_params
      params.require(:photo_post).permit(:title, :text10, :text9, :text8, :text7, :text6, :text5, :text4, :text3, :text2, :text1, :photo10, :photo9, :photo8, :photo7, :photo6, :photo5, :photo4, :photo3, :photo2, :photo1, :category_id, :subcategory_id)
    end
end
