class Item < ActiveRecord::Base
  belongs_to :list
  

  enum item_type: [:Toiletries, :Clothing, :Misc]
end
