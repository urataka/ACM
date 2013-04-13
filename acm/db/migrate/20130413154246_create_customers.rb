class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.datetime :offered_on
      t.string :sei_kana
      t.string :mei_kana
      t.string :sei_kanji
      t.string :mei_kanji
      t.string :identifier
      t.string :email
      t.string :tel
      t.string :postcode
      t.string :address
      t.string :url
      t.text :note
      t.integer :updated_user
      t.timestamp :updated_at
      t.integer :created_user
      t.timestamp :created_at

      t.timestamps
    end
  end
end
