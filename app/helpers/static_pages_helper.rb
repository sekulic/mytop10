module StaticPagesHelper
    def sort_for_index(video_posts, photo_posts)
      @posts = Array.new
      video_posts.each do |video_post|
        tmp = Hash.new
        tmp =  { :id => video_post.id, :title => video_post.title, :category_id => video_post.category_id, :subcategory_id => video_post.subcategory_id, :type => "video post", :created_at => video_post.created_at }
        @posts.push(tmp)
      end
      photo_posts.each do |photo_post|
        tmp = Hash.new
        tmp =  { :id => photo_post.id, :title => photo_post.title, :category_id => photo_post.category_id, :subcategory_id => photo_post.subcategory_id, :type => "photo post", :created_at => photo_post.created_at }
        @posts.push(tmp)
      end
      @posts = @posts.sort_by { |hsh| hsh[:created_at] }.reverse!      
      @posts = @posts.paginate(:page => params[:page], :per_page => 12)
    end 
    def sort_for_index_post(video_posts, photo_posts)
      @postss = Array.new
      video_posts.each do |video_post|
        tmp = Hash.new
        tmp =  { :id => video_post.id, :title => video_post.title, :category_id => video_post.category_id, :subcategory_id => video_post.subcategory_id, :type => "video post", :created_at => video_post.created_at }
        @postss.push(tmp)
      end
      photo_posts.each do |photo_post|
        tmp = Hash.new
        tmp =  { :id => photo_post.id, :title => photo_post.title, :category_id => photo_post.category_id, :subcategory_id => photo_post.subcategory_id, :type => "photo post", :created_at => photo_post.created_at }
        @postss.push(tmp)
      end      
      @postss = @postss.sort_by { |hsh| hsh[:created_at] }.reverse! 
      @postss = @postss.paginate(:page => params[:page], :per_page => 12)
      return @postss
    end   
end
