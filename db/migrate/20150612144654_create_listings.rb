class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :currency
      t.string :bank
      t.decimal :price
      t.string :min
      t.string :max

      t.timestamps null: false
    end
  end
end
