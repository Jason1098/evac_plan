class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :number
      t.string :name
      t.integer :building

      t.timestamps
    end
  end
end
