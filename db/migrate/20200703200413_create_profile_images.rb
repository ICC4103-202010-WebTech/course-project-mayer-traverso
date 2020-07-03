class CreateProfileImages < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_images do |t|
      t.string :image
      t.references :profile_page
      t.timestamps
    end
  end
end
