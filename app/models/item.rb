class Item < ActiveRecord::Base
  belongs_to :trips
  

  enum item_type: [:Toiletries, :Clothing, :Misc]
end
