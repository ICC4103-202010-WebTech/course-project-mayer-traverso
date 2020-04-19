class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :name
      t.datetime :date
      t.boolean :public
      t.string :description
      t.references :creator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
