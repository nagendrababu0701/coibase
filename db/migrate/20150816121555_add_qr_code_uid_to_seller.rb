class AddQrCodeUidToSeller < ActiveRecord::Migration
  def change
    add_column :sellers, :qr_code_uid, :text
  end
end
