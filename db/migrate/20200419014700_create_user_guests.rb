class CreateUserGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_guests do |t|
      t.boolean :user_role
      t.references :username
      t.references :event

      t.timestamps
    end
  end
end
