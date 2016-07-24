class CreateAccommodationsEvents < ActiveRecord::Migration
  def change
    create_table :accommodations_events do |t|
      t.integer :accommodation_id, null: false
      t.integer :event_id, null: false
    end
  end
end
