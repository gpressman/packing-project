class UsersController < ApplicationController
  def show
  	@user = current_user
  	@trips = @user.trips
  end
end