json.extract! concert, :id, :name, :location, :assistance, :band_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
