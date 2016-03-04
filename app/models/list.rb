class List < ActiveRecord::Base
  belongs_to :trip
  has_many :items
end
