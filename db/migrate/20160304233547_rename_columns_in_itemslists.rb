class RenameColumnsInItemslists < ActiveRecord::Migration
  def change
  	rename_column :items_lists, :ilist_id, :list_id
  end
end
