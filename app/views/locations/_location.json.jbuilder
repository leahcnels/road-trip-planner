json.extract! location, :id, :latitude, :longitude, :trip_id, :address, :created_at, :updated_at
json.url location_url(location, format: :json)