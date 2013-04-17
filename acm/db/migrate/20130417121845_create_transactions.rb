class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :sale_id
      t.integer :target_account_id, null: false
      t.integer :source_account_id
      t.integer :amount, null: false
      t.date :transact_on, null: false
      t.text :note
      t.timestamp :deleted_at
      t.integer :update_user
      t.timestamp :updated_at
      t.integer :create_user
      t.timestamp :created_at
    end
  end
end
