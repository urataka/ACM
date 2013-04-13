class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :default_payment
      t.text :note
      t.boolean :display_flg
      t.integer :updated_user
      t.timestamp :updated_at
      t.integer :created_user
      t.timestamp :created_at

      t.timestamps
    end
  end
end
