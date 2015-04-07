class CreateTestDrives < ActiveRecord::Migration
  def change
    create_table :test_drives do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :residential_address
      t.string :office_address
      t.integer :vehicle_type
      t.integer :model
      t.string :preffered_time
      t.string :comments

      t.timestamps null: false
    end
  end
end
