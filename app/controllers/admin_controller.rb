class AdminController < ApplicationController
  def publish_seller
    seller = Seller.find(params[:id])
    seller.update_column(:publish, true)
    redirect_to :back, notice: "Transaction has been published"
  end
end