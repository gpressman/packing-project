class Trip < ActiveRecord::Base
  belongs_to :user

  enum trip_type: [:Festival, :Hotel, :Camping, :Friends]
end
