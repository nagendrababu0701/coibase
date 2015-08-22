class AddCapthaFiledToSeller < ActiveRecord::Migration
  def change
    add_column :sellers, :captcha, :string
    add_column :sellers, :captcha_key, :string
  end
end
