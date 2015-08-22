class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :dynamicos2
      t.string :bank_name
      t.string :credname
      t.string :sellaccname
      t.string :seller_account_number
      t.string :seller_account_number_confirmation
      t.string :sell_amount
      t.string :minsell_amount
      t.string :currency
      t.string :dynamicos
      t.string :exchange
      t.string :typed
      t.string :dynacharge
      t.string :sell_dollar_value
      t.string :seller_email
      t.string :seller_email_confirmation
      t.string :deletepin
      t.string :captcha
      t.string :captcha_key
      t.boolean :notif
      t.boolean :tos
      t.string :bit_address
      t.string :qr_code
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

