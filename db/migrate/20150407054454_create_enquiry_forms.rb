class CreateEnquiryForms < ActiveRecord::Migration
  def change
    create_table :enquiry_forms do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :mobile
      t.string :city
      t.string :zip_code
      t.integer :vehicle_type
      t.string :query

      t.timestamps null: false
    end
  end
end
