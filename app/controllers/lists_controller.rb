class ListsController < ApplicationController
  def show
    @user = current_user
  	@trip = Trip.find(params[:trip_id])
  	@list = List.find(params[:id])
  	@item = @list.items.new
    @suggestion = Suggestion.find_by(name: @trip.trip_type)
    @prepared = Prepared.find_by(name: @trip.trip_type)
  end

  def new
  	@trip = Trip.find(params[:trip_id])
  	@list = @trip.lists.new
  end

  def create
    @user = current_user
  	@trip = Trip.find(params[:trip_id])
  	@list = @trip.lists.new(list_params)

  	  if @list.save
  	  	redirect_to user_trip_list_path(@user, @trip, @list)
  	  else
  	    render @trip
  	end
  end

  private

  def list_params
  	params.require(:list).permit(:owner)
  end
end
