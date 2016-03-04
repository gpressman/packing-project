class ItemsController < ApplicationController
  def new
  	@user = current_user
  	@trip = Trip.find(params[:id])
  	@item = @trip.items.new
  end

  def create
  	@trip = Trip.find(params[:trip_id])
  	@item = @trip.items.new(item_params)
  	if @item.save
  	  redirect_to trip_list_path(@trip, @list)
  	else
  	  render @list
  	end
  end

  private

  def item_params
  	params.require(:item).permit(:name, :item_type, :amount)
  end
end
