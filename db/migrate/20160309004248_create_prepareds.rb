class CreatePrepareds < ActiveRecord::Migration
  def change
    create_table :prepareds do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
