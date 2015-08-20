class BuyersController < ApplicationController
  before_action :load_seller

  def new
    # raise (@seller.buyers.build).inspect
    @buyer = @seller.buyers.build
  end
  def create
    @buyer = @seller.buyers.build(buyer_params)
    if @buyer.save
      BuyerMailer.buyer_email(@buyer, @seller).deliver
      redirect_to sellers_path
    else
      render :new
    end
  end
  private

  def buyer_params
    params.require(:buyer).permit(:email, :seller_id)
  end
  def load_seller
    @param  = params[:seller_id] || params[:buyer][:seller_id]
    @seller = Seller.find(@param)
  end
end
