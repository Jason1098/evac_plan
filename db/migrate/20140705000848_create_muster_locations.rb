class CreateMusterLocations < ActiveRecord::Migration
  def change
    create_table :muster_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
