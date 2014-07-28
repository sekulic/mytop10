class StaticPagesController < ApplicationController
require 'will_paginate/array'
include StaticPagesHelper
  def index
    if request.get?
      if params.has_key?(:category_id)
        @video_posts = VideoPost.where(:category_id => params[:category_id])
        @photo_posts = PhotoPost.where(:category_id => params[:category_id])
        sort_for_index(@video_posts, @photo_posts)
      elsif params.has_key?(:subcategory_id)
        @video_posts = VideoPost.where(:subcategory_id => params[:subcategory_id])
        @photo_posts = PhotoPost.where(:subcategory_id => params[:subcategory_id])
        sort_for_index(@video_posts, @photo_posts)
      elsif params.has_key?(:video_p)
        @video_posts = VideoPost.all
        @photo_posts = []
        sort_for_index(@video_posts, @photo_posts)
      elsif params.has_key?(:photo_p)
        @video_posts = []
        @photo_posts = PhotoPost.all
        sort_for_index(@video_posts, @photo_posts)            
      else
        @video_posts = VideoPost.all
        @photo_posts = PhotoPost.all
        sort_for_index(@video_posts, @photo_posts)
      end 
    elsif  request.post?
      if params[:posts]
         if posts.has_key?(:type_ids)
             if posts[:type_ids] == ["1" , "2"]
              @video_posts = VideoPost.all
               @photo_posts = PhotoPost.all
              @filter = sort_for_index_post(@video_posts, @photo_posts) 
             elsif posts[:type_ids] == ["1"]
              @video_posts = VideoPost.all
              @photo_posts = []
              @filter = sort_for_index_post(@video_posts, @photo_posts)   
             elsif posts[:type_ids] == ["2"]
              @video_posts = []
              @photo_posts = PhotoPost.all
              @filter = sort_for_index_post(@video_posts, @photo_posts)                                      
             end 
         else
              @video_posts = VideoPost.all
              @photo_posts = PhotoPost.all
              @filter = sort_for_index_post(@video_posts, @photo_posts)   
         end
         if  posts.has_key?(:cate_ids)
             @filter.delete_if  {|hash| posts[:cate_ids].exclude? hash[:category_id].to_s} 
             @posts = @filter       
         elsif posts.has_key?(:subcate_ids)
             @filter.delete_if  {|hash| posts[:subcate_ids].exclude? hash[:subcategory_id].to_s} 
             @posts = @filter
         else
             @posts = @filter    
         end 
      else
        @video_posts = VideoPost.all
        @photo_posts = PhotoPost.all
        sort_for_index(@video_posts, @photo_posts)                 
      end
    end  
  end
    def posts
      params.require(:posts).permit(:type_ids => [],:cate_ids => [],:subcate_ids => []) if params[:posts]
    end   
end
