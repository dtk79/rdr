json.array!(@queens) do |queen|
  json.extract! queen, :id, :name, :bio, :city, :image
  json.url queen_url(queen, format: :json)
end
