json.array!(@video_posts) do |video_post|
  json.extract! video_post, :id, :title, :text10, :text9, :text8, :text7, :text6, :text5, :text4, :text3, :text2, :text1, :link10, :link9, :link8, :link7, :link6, :link5, :link4, :link3, :link2, :link1, :category_id, :subcategory_id, :user_id
  json.url video_post_url(video_post, format: :json)
end
