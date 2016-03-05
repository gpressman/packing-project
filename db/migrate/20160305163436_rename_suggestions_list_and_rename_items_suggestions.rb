class RenameSuggestionsListAndRenameItemsSuggestions < ActiveRecord::Migration
  def change
  	rename_table :suggestion_lists, :suggestions
  	rename_table :itemssuggestions, :items_suggestions
  end
end
