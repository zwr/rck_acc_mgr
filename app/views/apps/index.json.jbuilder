json.array!(@apps) do |app|
  json.extract! app, :id, :name, :url, :secret_hash
  json.url app_url(app, format: :json)
end
