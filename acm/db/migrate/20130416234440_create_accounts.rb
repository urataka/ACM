class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :disp_order, null: false, default: 100
      t.boolean :is_active, null: false, default: true
      t.text :note
      t.integer :update_user
      t.timestamp :updated_at
      t.integer :create_user
      t.timestamp :created_at
    end
  end
end
