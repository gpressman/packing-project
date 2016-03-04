class RemoveColumnFromItems < ActiveRecord::Migration
  def change
  	remove_column :items, :[]
  end
end
