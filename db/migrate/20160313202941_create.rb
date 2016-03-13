class Create < ActiveRecord::Migration
  def change
  	create_table :items_prepareds, id: false  do |t|
      t.belongs_to :item, index: true
      t.belongs_to :prepared, index: true
    end
  end
end
