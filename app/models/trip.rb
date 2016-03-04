class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :lists
  has_many :items

  enum trip_type: [:Festival, :Hotel, :Camping, :Friends]
end
