require 'test_helper'

class Users::OmniauthCallbacksControllerTest < ActionController::TestCase
  test "should get coinbase" do
    get :coinbase
    assert_response :success
  end

end
