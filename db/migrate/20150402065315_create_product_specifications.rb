class CreateProductSpecifications < ActiveRecord::Migration
  def change
    create_table :product_specifications do |t|
      t.integer :passenger_vehicle_id
      t.string :product_label
      t.string :product_value

      t.timestamps null: false
    end
  end
end
