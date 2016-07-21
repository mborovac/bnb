class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :contents, null: false
      t.float :rating
      t.integer :user_id, null: false
      t.integer :reviewable_id, null: false

      t.timestamps
    end
  end
end
