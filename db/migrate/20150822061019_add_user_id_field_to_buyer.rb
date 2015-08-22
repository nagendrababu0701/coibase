class AddUserIdFieldToBuyer < ActiveRecord::Migration
  def change
    add_column :buyers, :user_id, :integer
    add_column :buyers, :bitcoin_address, :boolean
  end
end
