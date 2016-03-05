class CreateItemssuggestions < ActiveRecord::Migration
  def change
    create_table :itemssuggestions, id: false  do |t|
      t.belongs_to :item, index: true
      t.belongs_to :suggestion, index: true
    end
  end
end
