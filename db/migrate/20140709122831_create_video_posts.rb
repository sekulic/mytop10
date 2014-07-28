class CreateVideoPosts < ActiveRecord::Migration
  def change
    create_table :video_posts do |t|
      t.string :title
      t.text :text10
      t.text :text9
      t.text :text8
      t.text :text7
      t.text :text6
      t.text :text5
      t.text :text4
      t.text :text3
      t.text :text2
      t.text :text1
      t.text :link10
      t.text :link9
      t.text :link8
      t.text :link7
      t.text :link6
      t.text :link5
      t.text :link4
      t.text :link3
      t.text :link2
      t.text :link1
      t.integer :category_id
      t.integer :subcategory_id
      t.integer :user_id

      t.timestamps
    end
  end
end
