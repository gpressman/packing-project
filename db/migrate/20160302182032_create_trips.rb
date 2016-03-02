class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :location
      t.integer :length
      t.integer :type

      t.timestamps null: false
    end
  end
end
