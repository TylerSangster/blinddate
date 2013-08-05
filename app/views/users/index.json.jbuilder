json.array!(@users) do |user|
  json.extract! user, :username, :password, :name, :handle, :sex, :age
  json.url user_url(user, format: :json)
end
