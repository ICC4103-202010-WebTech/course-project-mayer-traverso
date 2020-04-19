class CreateDateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :date_events do |t|
      t.datetime :event_date
      t.references :event, null: false, foreign_key: true
      t.references :vote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
