json.array!(@users) do |user|
  json.extract! user, :id, :name, :sex, :school, :highschool, :city, :photo, :views, :likes
  json.url user_url(user, format: :json)
end
