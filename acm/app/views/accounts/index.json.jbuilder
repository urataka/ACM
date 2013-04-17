json.array!(@accounts) do |account|
  json.extract! account, :name, :disp_order, :is_active, :note, :update_user, :update_at, :create_user, :create_at
  json.url account_url(account, format: :json)
end