json.extract! dog, :id, :name, :level, :points, :stamina, :created_at, :updated_at
json.url dog_url(dog, format: :json)
