class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  include SimpleCaptcha::ControllerHelpers
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end

  def client_coinbase
    if Rails.env == 'development'
      @client = Coinbase::Wallet::Client.new(api_key: Rails.application.secrets.api_key_coinbase, api_secret: Rails.application.secrets.api_secret_coinbase, api_url: "https://api.sandbox.coinbase.com")
    else
      @client = Coinbase::Wallet::Client.new(api_key: Rails.application.secrets.api_key_coinbase, api_secret: Rails.application.secrets.api_secret_coinbase)    
    end  
  end

end
