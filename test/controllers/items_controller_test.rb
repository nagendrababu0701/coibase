require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { bank_name: @item.bank_name, country: @item.country, currency: @item.currency, identified: @item.identified, location: @item.location, margin: @item.margin, max_transaction_limit: @item.max_transaction_limit, min_transaction_limit: @item.min_transaction_limit, minimum_feedback_score: @item.minimum_feedback_score, minimum_volume: @item.minimum_volume, new_buyer_limit: @item.new_buyer_limit, payment_ref: @item.payment_ref, price: @item.price, real_name_req: @item.real_name_req, ref_type: @item.ref_type, restrict_to: @item.restrict_to, sell_buy: @item.sell_buy, sms_verify: @item.sms_verify, terms: @item.terms, title: @item.title, track_liquidity: @item.track_liquidity, trusted_person: @item.trusted_person, user_id: @item.user_id }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { bank_name: @item.bank_name, country: @item.country, currency: @item.currency, identified: @item.identified, location: @item.location, margin: @item.margin, max_transaction_limit: @item.max_transaction_limit, min_transaction_limit: @item.min_transaction_limit, minimum_feedback_score: @item.minimum_feedback_score, minimum_volume: @item.minimum_volume, new_buyer_limit: @item.new_buyer_limit, payment_ref: @item.payment_ref, price: @item.price, real_name_req: @item.real_name_req, ref_type: @item.ref_type, restrict_to: @item.restrict_to, sell_buy: @item.sell_buy, sms_verify: @item.sms_verify, terms: @item.terms, title: @item.title, track_liquidity: @item.track_liquidity, trusted_person: @item.trusted_person, user_id: @item.user_id }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
