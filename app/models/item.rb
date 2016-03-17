class Item < ActiveRecord::Base
  has_and_belongs_to_many :lists
  has_and_belongs_to_many :items
  has_and_belongs_to_many :suggestions
  

  enum item_type: [:Toiletries, :Clothing, :Misc]

  def add_to_list(item, list, suggestion)
  	unless list.items.include?(item)
      list.items << item
      suggestion.items << item
    end
  end
end
