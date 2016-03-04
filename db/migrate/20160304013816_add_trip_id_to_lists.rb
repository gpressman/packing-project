class AddTripIdToLists < ActiveRecord::Migration
  def change
  	add_column :lists, :trip_id, :integer
  end
end
