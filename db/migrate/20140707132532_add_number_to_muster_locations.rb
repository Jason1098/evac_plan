class AddNumberToMusterLocations < ActiveRecord::Migration
  def change
    add_column :muster_locations, :number, :integer
  end
end
