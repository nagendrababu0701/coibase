class AddSoldCoinFiledToSeller < ActiveRecord::Migration
  def change
    add_column :sellers, :sold_coin, :string
  end
end
