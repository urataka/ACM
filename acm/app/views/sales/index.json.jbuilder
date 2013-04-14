json.array!(@sales) do |sale|
  json.extract! sale, :customer_id, :menu_id, :attended_on, :quantity, :payment, :paid_flg, :note, :deleted_at, :canceled_at, :updated_user, :updated_at, :created_user, :created_at
  json.url sale_url(sale, format: :json)
end