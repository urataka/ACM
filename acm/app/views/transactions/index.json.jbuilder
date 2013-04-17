json.array!(@transactions) do |transaction|
  json.extract! transaction, :sale_id, :target_account_id, :source_account_id, :amount, :transact_on, :note, :deleted_at, :update_user, :updated_at, :create_user, :created_at
  json.url transaction_url(transaction, format: :json)
end