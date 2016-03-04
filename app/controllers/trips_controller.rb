class TripsController < ApplicationController
  
  def show 
    @trip = Trip.find(params[:id])
    @list = @trip.lists.new
  end

  def index
  	@user = current_user
  	@trips = @user.trips
  end

  def new
    @user = current_user
  	@trip = Trip.new
  end

  def create
    @user = current_user
    @trip = @user.trips.new(trip_params)
      if @trip.save
        redirect_to @trip
      else
        render 'new'    
      end
  end

  private

  def trip_params
  	params.require(:trip).permit(:location, :length, :trip_type)
  end
end
