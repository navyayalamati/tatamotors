class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.integer :passenger_vehicle_id
      t.string :feature_type
      t.string :feature

      t.timestamps null: false
    end
  end
end
