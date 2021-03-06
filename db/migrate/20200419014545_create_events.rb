class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.boolean :public
      t.string :description
      t.references :user

      t.timestamps
    end
  end
end
