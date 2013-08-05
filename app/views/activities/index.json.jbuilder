json.array!(@activities) do |activity|
  json.extract! activity, :name, :category
  json.url activity_url(activity, format: :json)
end
