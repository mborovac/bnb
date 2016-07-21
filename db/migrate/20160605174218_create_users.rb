class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :role, null: false
      t.string :first_name
      t.string :last_name
      t.date :dob

      t.timestamps
    end
  end
end
