ActiveAdmin.register Seller do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  
  actions :all, :except => [:edit]
  preserve_default_filters!

  index do
    selectable_column
    column :id
     column :dynamicos2
     column :bank_name
     column :credname
     column :sellaccname
     column :seller_account_number
     column :sell_amount
     column :minsell_amount
     column :currency
     column :dynamicos
     column :exchange
     column :typed
     column :dynacharge
     column :sell_dollar_value
     column :seller_email
     column :bit_address
     column :user_id
     column :publish
    actions defaults: false do |seller|
      link_to 'Publish', publish_seller_path(:id => seller), method: :post
    end
    actions
  end

end
