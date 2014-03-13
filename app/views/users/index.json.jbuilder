json.array!(@users) do |user|
  json.extract! user, :id, :happiness, :health, :wealth, :culture, :drama, :location, :spirituality, :relationships, :activity, :reflectivity, :civilization, :passion, :control, :satisfaction, :self_view
  json.url user_url(user, format: :json)
end
