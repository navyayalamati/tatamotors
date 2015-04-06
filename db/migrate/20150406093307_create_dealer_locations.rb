class CreateDealerLocations < ActiveRecord::Migration
  def change
    create_table :dealer_locations do |t|
      t.string :country
      t.string :name_of_setup
      t.string :city
      t.string :tel_no
      t.string :category
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
