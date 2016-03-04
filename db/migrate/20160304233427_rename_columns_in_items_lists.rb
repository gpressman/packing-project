class RenameColumnsInItemsLists < ActiveRecord::Migration
  def change
  	rename_column :items_lists, :items_id, :item_id
  	rename_column :items_lists, :lists_id, :ilist_id
  end
end
