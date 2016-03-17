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
  def add_to_preset(item, suggestion, prepared)
  count = 0
    suggestion.items.each do |item|
      if item.name == item.name
        count+=1
      end
    end
    if count >= 5
      unless prepared.items.include?(item)
        prepared.items << item
      end
    end
  end
end
