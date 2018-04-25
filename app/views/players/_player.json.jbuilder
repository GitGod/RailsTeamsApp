json.extract! player, :id, :picture, :name, :surname, :born, :country, :position, :created_at, :updated_at
json.url player_url(player, format: :json)
