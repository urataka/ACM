class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :customer_id
      t.integer :menu_id
      t.date :attended_on
      t.integer :quantity
      t.integer :payment
      t.boolean :paid_flg
      t.text :note
      t.timestamp :deleted_at
      t.timestamp :canceled_at
      t.integer :updated_user
      t.timestamp :updated_at
      t.integer :created_user
      t.timestamp :created_at

      t.timestamps
    end
  end
end
