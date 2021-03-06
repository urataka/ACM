json.array!(@customers) do |customer|
  json.extract! customer, :offered_on, :sei_kana, :mei_kana, :sei_kanji, :mei_kanji, :identifier, :email, :tel, :postcode, :address, :url, :note, :updated_user, :updated_at, :created_user, :created_at
  json.url customer_url(customer, format: :json)
end