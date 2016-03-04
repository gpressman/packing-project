class ChangeTripIdToListIdInItems < ActiveRecord::Migration
  def change
  	rename_column :items, :trip_id, :list_id
  end
end
