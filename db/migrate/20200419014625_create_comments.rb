class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.references :user
      t.references :event

      t.timestamps
    end
  end
end
