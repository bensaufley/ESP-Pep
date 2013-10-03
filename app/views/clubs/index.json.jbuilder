json.array!(@clubs) do |club|
  json.extract! club, :name, :short
  json.url club_url(club, format: :json)
end
