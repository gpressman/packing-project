class AddItemIdToTrips < ActiveRecord::Migration
  def change
  	add_column :trips, :item_id, :integer
  end
end
