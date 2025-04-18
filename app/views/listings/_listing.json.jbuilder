json.extract! listing, :id, :year, :make, :model, :odometer, :price, :photo, :created_at, :updated_at
json.url listing_url(listing, format: :json)
