class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :name, null: false
      t.integer :rating
      t.decimal :price
      t.integer :capacity
      t.text :description
      t.text :rules
      t.integer :region_id, null: false
      t.integer :user_id
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :zoom, null: false

      t.timestamps
    end
  end
end
