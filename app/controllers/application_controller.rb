class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate_user

  def authenticate_user
    authenticate_with_http_token do |token|
      public_key = Eth::Key.personal_recover('I agree to the terms and conditions of Whitestone Gallery.', token)
      address = Eth::Utils.public_key_to_address(public_key)
      @user = User.where(address: address).first_or_create!
    end
  end
end
