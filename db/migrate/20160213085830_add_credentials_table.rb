class AddCredentialsTable < ActiveRecord::Migration
  def change
    create_table(:credentials) do |t|
      t.integer :user_id,  null: false
      t.text :credentials
    end

    add_index :credentials, :user_id, unique: true

    remove_column :users, :credentials, :text
  end
end
