class AddTripIdToItems < ActiveRecord::Migration
  def change
  	add_column :items, :trip_id, :integer
  end
end
