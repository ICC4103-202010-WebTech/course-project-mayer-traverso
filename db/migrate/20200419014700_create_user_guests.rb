class CreateUserGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_guests do |t|
      t.boolean :user_role
      t.references :username, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
