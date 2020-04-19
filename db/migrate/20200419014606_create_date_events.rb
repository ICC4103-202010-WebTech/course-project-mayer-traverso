class CreateDateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :date_events do |t|
      t.datetime :event_date
      t.references :event
      t.references :vote

      t.timestamps
    end
  end
end
