class CreatePhotoPosts < ActiveRecord::Migration
  def change
    create_table :photo_posts do |t|
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
      t.integer :category_id
      t.integer :subcategory_id
      t.integer :user_id

      t.timestamps
    end
  end
end
