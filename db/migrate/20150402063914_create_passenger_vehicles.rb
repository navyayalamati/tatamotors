class CreatePassengerVehicles < ActiveRecord::Migration
  def change
    create_table :passenger_vehicles do |t|
      t.string :name
      t.string :introduction
      t.string :image

      t.timestamps null: false
    end
  end
end
