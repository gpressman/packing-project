class ItemsController < ApplicationController
  def new
  	@user = current_user
  	@trip = Trip.find(params[:trip_id])  	
  end

  def create 
    @user = current_user	
    @trip = Trip.find(params[:trip_id])
    @list = List.find(params[:list_id])
  	@item = @list.items.new(item_params)
    @item = Item.where(name: @item.name).first_or_create(item_params)
    @suggestion = Suggestion.find_by(name: @trip.trip_type)
    @prepared = Prepared.find_by(name: @trip.trip_type)
    unless @list.items.include?(@item)
      @list.items << @item
      @suggestion.items << @item
    end
    count = 0
    @suggestion.items.each do |item|
      if item.name == @item.name
        count+=1
      end
    end
    if count >= 5
      @prepared.items << @item
    end
  	if @item.save
  	  redirect_to user_trip_list_path(@user, @trip, @list)
  	else
  	  render @list
  	end
  end

  private

  def item_params
  	params.require(:item).permit(:name, :item_type, :amount)
  end
end
