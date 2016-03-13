class TripsController < ApplicationController
  
  def show 
    @user = current_user
    @trip = Trip.find(params[:id])
    trip_type = @trip.trip_type
    @list = @trip.lists.new
    @suggestion = Suggestion.find_by(name: @trip.trip_type)
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
        redirect_to user_trip_path(@user, @trip)
      else
        render 'new'    
      end
  end

  private

  def trip_params
  	params.require(:trip).permit(:location, :length, :trip_type)
  end
end
