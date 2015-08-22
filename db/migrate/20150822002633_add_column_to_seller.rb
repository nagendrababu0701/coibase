class AddColumnToSeller < ActiveRecord::Migration
  def change
    add_column :sellers, :publish, :boolean, default: false
  end
end
