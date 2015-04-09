class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :file_name
      t.string :file
      t.string :file_type

      t.timestamps null: false
    end
  end
end
