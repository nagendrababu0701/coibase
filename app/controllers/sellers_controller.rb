class SellersController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	#before_action :generate_key, only: [:create]

	def index
    @sellers = Seller.where(publish: true)
	end

	def new
		@seller = Seller.new
	end

  def create
    # @address
    # @seller = current_user.sellers.new(seller_params)
    # key = Bitcoin::generate_key
    # @seller.bit_address = Bitcoin::pubkey_to_address(key[1])
    # if @seller.save
    #   qr_code = RQRCode::QRCode.new(@seller.bit_address, :size => 4, :level => :h).to_img
    #   qr_code.resize(200, 200).save("app/assets/images/missing.png")
    #   BitcoinMailer.send_email_user(params[:seller][:seller_email],@seller).deliver
    #   redirect_to sellers_path
    # else
    #   render 'new'
    # end
    @seller = current_user.sellers.new(seller_params)
    if @seller.save
      client.primary_account.sell(amount: @seller.sell_amount, currency: @seller.currency)
      qr_code = client.primary_account.addresses
      BitcoinMailer.send_email_user(params[:seller][:seller_email],qr_code,@seller).deliver
    end
    redirect_to :back
  end

  # def create
  #   # @address
  #   @seller = current_user.sellers.new(seller_params)
  #   key = Bitcoin::generate_key
  #   @seller.bit_address = Bitcoin::pubkey_to_address(key[1])
  #   #qr_code_img = RQRCode::QRCode.new(@seller.bit_address, :size => 30, :level => :h ).to_img
  #   #@qr = RQRCode::QRCode.new( @seller.bit_address, :size => 4, :level => :h )
  #   #@seller.qr_code = qr_code_img.to_string
  #   if @seller.save
  #     #current_user.save_with_captcha
  #     #@seller.update_attribute :qr_code, qr_code_img.to_string
  #     qr_code = RQRCode::QRCode.new(@seller.bit_address, :size => 4, :level => :h).to_img.resize(100,100).to_data_url
  #     p "====================================", qr_code
  #     BitcoinMailer.send_email_user(params[:seller][:seller_email],qr_code,@seller).deliver
  #     redirect_to sellers_path
  #   else
  #     render :new
  #   end

  # end

  private
    def seller_params
      params.require(:seller).permit(:dynamicos2, :bank_name, :credname, :sellaccname,
        :seller_account_number, :seller_account_number_confirmation, :sell_amount, :minsell_amount,
        :currency, :dynamicos, :exchange, :typed, :dynacharge, :sell_dollar_value,
        :seller_email, :seller_email_confirmation, :deletepin, :captcha_code, :notif, :tos, :captcha, :captcha_key)
    end
end
