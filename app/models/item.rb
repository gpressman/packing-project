class Item < ActiveRecord::Base
  has_and_belongs_to_many :lists
  has_and_belongs_to_many :suggestion_lists
  

  enum item_type: [:Toiletries, :Clothing, :Misc]
end
