class ItemsController < ApplicationController
  def new
  	@user = current_user
  	@trip = Trip.find(params[:id])
  	
  end

  def create 	
    @trip = Trip.find(params[:trip_id])
    @list = List.find(params[:list_id])
  	@item = @list.items.new(item_params)
    @item = Item.where(name: @item.name).first_or_create(item_params)
    unless @list.items.include?(@item)
      @list.items << @item
    end
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
