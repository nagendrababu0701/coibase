class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.integer :seller_id
      t.string :email
      t.string :purchase_amount
      t.boolean :tos
      t.boolean :bitcoin_address
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
