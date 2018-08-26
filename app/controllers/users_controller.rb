class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def update
    @user = current_user
    @user.latitude = params[:latitude]
    @user.longitude = params[:longitude]
    @user.save!
  end
end
