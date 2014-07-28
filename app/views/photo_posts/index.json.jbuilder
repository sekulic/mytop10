json.array!(@photo_posts) do |photo_post|
  json.extract! photo_post, :id, :title, :text10, :text9, :text8, :text7, :text6, :text5, :text4, :text3, :text2, :text1, :category_id, :subcategory_id, :user_id
  json.url photo_post_url(photo_post, format: :json)
end
