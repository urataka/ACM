json.array!(@users) do |user|
  json.extract! user, :user_id, :address, :password, :delete_flg, :updated_user, :updated_at, :created_user, :created_at
  json.url user_url(user, format: :json)
end