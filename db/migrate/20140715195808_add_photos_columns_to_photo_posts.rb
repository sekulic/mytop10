class AddPhotosColumnsToPhotoPosts < ActiveRecord::Migration
  def self.up
    add_attachment :photo_posts, :photo10
    add_attachment :photo_posts, :photo9
    add_attachment :photo_posts, :photo8
    add_attachment :photo_posts, :photo7
    add_attachment :photo_posts, :photo6            
    add_attachment :photo_posts, :photo5
    add_attachment :photo_posts, :photo4
    add_attachment :photo_posts, :photo3
    add_attachment :photo_posts, :photo2
    add_attachment :photo_posts, :photo1 
  end

  def self.down
    remove_attachment :photo_posts, :photo10
    remove_attachment :photo_posts, :photo9
    remove_attachment :photo_posts, :photo8
    remove_attachment :photo_posts, :photo7
    remove_attachment :photo_posts, :photo6            
    remove_attachment :photo_posts, :photo5
    remove_attachment :photo_posts, :photo4
    remove_attachment :photo_posts, :photo3
    remove_attachment :photo_posts, :photo2
    remove_attachment :photo_posts, :photo1
  end
end
