json.array!(@cards) do |card|
  json.extract! card, :from_name, :name, :position, :club_id, :manager_name, :value, :service_standard, :note, :from_email
  json.url card_url(card, format: :json)
end
