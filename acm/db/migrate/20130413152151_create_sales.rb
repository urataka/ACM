class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :date
      t.integer :menu_id
      t.integer :quantity
      t.integer :price
      t.integer :customer_id
      t.text :memo
      t.boolean :cancel
      t.timestamp :deleted_at
      t.integer :updated_user
      t.timestamp :updated_at
      t.integer :created_user
      t.timestamp :created_at

      t.timestamps
    end
  end
end
