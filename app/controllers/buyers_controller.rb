class BuyersController < ApplicationController
  before_action :load_seller

  def new
    # raise (@seller.buyers.build).inspect
    # if current_user.sellers.where(id: params[:seller_id]).first.buyers.present? && current_user.sellers.where(id: params[:seller_id]).first.buyers.first.sold == "yes"
    #   flash[:notice] = "Bitcoin alerdy sold out"
    #   render :new
    # else
      @buyer = @seller.buyers.build
    #end
  end
  def create
    if @seller.sold_coin.blank? && @seller.sold_coin == nil
      @buyer = @seller.buyers.build(buyer_params)
      if @buyer.save && 
        @seller.update_attributes(sold_coin: "yes")
        BuyerMailer.buyer_email(@buyer, @seller).deliver
        redirect_to sellers_path
      else
        render :new
      end
    else
      @buyer = Buyer.new
      flash[:notice] = "Bitcoin alerdy sold out."
      render :new
    end
  end
  private

  def buyer_params
    params.require(:buyer).permit(:email, :seller_id,:user_id,:bitcoin_address)
  end
  def load_seller
    @param  = params[:seller_id] || params[:buyer][:seller_id]
    @seller = Seller.find(@param)
  end
end
