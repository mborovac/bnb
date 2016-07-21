class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :zoom, null: false
      t.integer :ordering_index

      t.timestamps
    end
  end
end
