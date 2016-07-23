json.array!(@users) do |user|
  json.extract! user, :id, :name, :home_address, :work_address, :email
  json.url user_url(user, format: :json)
end
