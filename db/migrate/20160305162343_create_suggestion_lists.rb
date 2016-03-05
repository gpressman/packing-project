class CreateSuggestionLists < ActiveRecord::Migration
  def change
    create_table :suggestion_lists do |t|

      t.timestamps null: false
      t.string :name
    end
  end
end
