json.extract! restoran, :id, :name, :description, :slug, :created_at, :updated_at
json.url restoran_url(restoran, format: :json)