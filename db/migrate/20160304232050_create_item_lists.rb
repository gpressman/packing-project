class CreateItemLists < ActiveRecord::Migration
  def change
    create_table :items_lists, id: false do |t|
      t.belongs_to :items, index: true
      t.belongs_to :lists, index: true
    end
  end
end
