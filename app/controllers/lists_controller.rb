class ListsController < ApplicationController
  def show
  	@trip = Trip.find(params[:trip_id])
  	@list = List.find(params[:id])
  	@item = @list.items.new
    @suggestion = Suggestion.find_by(name: @trip.trip_type)
  end

  def new
  	@trip = Trip.find(params[:trip_id])
  	@list = @trip.lists.new
  end

  def create
  	@trip = Trip.find(params[:trip_id])
  	@list = @trip.lists.new(list_params)
  	  if @list.save
  	  	redirect_to trip_list_path(@trip, @list)
  	  else
  	    render @trip
  	end
  end

  private

  def list_params
  	params.require(:list).permit(:owner)
  end
end
