class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :primary_location_id
      t.integer :secondary_location_id
      t.integer :badge
      t.integer :department_id
      t.integer :muster_location_id
      t.string :gender

      t.timestamps
    end
  end
end
