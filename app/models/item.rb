class Item < ActiveRecord::Base
  has_and_belongs_to_many :lists
  

  enum item_type: [:Toiletries, :Clothing, :Misc]
end
