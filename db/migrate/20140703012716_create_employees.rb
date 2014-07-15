class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :badge
      t.string :gender
      t.date :dob
      t.boolean :active
      t.integer :emergency_contact_id
      t.references :location, index: true
      t.references :department, index: true
      t.references :muster_location, index: true


      t.timestamps
    end
  end
end
