json.extract! content, :id, :content_type, :content_background, :content_special, :created_at, :updated_at
json.url content_url(content, format: :json)