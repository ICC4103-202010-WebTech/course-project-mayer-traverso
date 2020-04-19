class CreateProfilePages < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_pages do |t|
      t.string :name
      t.string :biography
      t.string :location
      t.references :user

      t.timestamps
    end
  end
end
