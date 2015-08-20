class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.integer :seller_id
      t.string :email
      t.string :purchase_amount
      t.boolean :tos
      t.timestamps null: false
    end
  end
end
