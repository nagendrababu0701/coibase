class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :sell_buy
      t.string :country
      t.string :currency
      t.string :bank_name
      t.integer :margin
      t.integer :min_transaction_limit
      t.integer :max_transaction_limit
      t.string :restrict_to
      t.decimal :price
      t.string :title
      t.string :location
      t.text :terms
      t.integer :minimum_volume
      t.integer :minimum_feedback_score
      t.decimal :new_buyer_limit
      t.string :payment_ref
      t.string :ref_type
      t.boolean :track_liquidity
      t.boolean :identified
      t.boolean :real_name_req
      t.boolean :sms_verify
      t.boolean :trusted_person
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
