class CreatePhotoComments < ActiveRecord::Migration
  def change
    create_table :photo_comments do |t|
      t.string :name
      t.text :comment
      t.integer :photo_post_id

      t.timestamps
    end
  end
end
