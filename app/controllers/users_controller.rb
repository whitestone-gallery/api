class UsersController < ApplicationController
  def show
    render json: @user
  end
end
