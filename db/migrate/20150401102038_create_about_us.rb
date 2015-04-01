class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.string :content
      t.string :heading
      t.string :image

      t.timestamps null: false
    end
  end
end
