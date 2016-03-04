class ListsController < ApplicationController
  def show
  	@list = List.find(params[:id])
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
