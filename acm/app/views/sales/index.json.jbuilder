json.array!(@sales) do |sale|
  json.extract! sale, :date, :menu_id, :quantity, :price, :customer_id, :memo, :cancel, :deleted_at, :updated_user, :updated_at, :created_user, :created_at
  json.url sale_url(sale, format: :json)
end