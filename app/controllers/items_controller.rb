class ItemsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
#    @items = Item.all
    if params[:type] == "sell"
      @items = Item.where(:sell_buy => ["sell local", "sell online"])
    elsif params[:type] == "buy"
      @items = Item.where(:sell_buy => ["buy local", "buy online"])
    else
      @items = Item.all#where(:sell_buy => ["buy local", "buy online"])
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:sell_buy, :country, :currency, :bank_name, :margin, :min_transaction_limit, :max_transaction_limit, :restrict_to, :price, :title, :location, :terms, :minimum_volume, :minimum_feedback_score, :new_buyer_limit, :payment_ref, :ref_type, :track_liquidity, :identified, :real_name_req, :sms_verify, :trusted_person, :user_id)
    end
end
