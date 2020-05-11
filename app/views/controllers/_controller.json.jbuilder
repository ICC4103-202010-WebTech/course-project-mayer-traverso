json.extract! controller, :id, :message, :created_at, :updated_at
json.url controller_url(controller, format: :json)
