json.array!(@likes) do |like|
  json.extract! like, :user_id, :activity_id
  json.url like_url(like, format: :json)
end
