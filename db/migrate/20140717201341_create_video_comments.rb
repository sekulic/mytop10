class CreateVideoComments < ActiveRecord::Migration
  def change
    create_table :video_comments do |t|
      t.string :name
      t.text :comment
      t.integer :video_post_id

      t.timestamps
    end
  end
end
