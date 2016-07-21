class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :difficulty, null: false
      t.float :length
      t.float :duration
      t.float :min_height
      t.float :max_height
      t.decimal :contribution
      t.integer :rating
      t.text :description
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.time :start_time
      t.time :end_time
      t.integer :region_id, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :zoom, null: false

      t.timestamps
    end
  end
end
