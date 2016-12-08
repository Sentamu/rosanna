json.extract! listing, :id, :name, :description, :sellprice, :rentprice, :created_at, :updated_at
json.url listing_url(listing, format: :json)