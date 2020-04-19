class CreateDateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :date_events do |t|
      t.datetime :date
      t.references :event

      t.timestamps
    end
  end
end
