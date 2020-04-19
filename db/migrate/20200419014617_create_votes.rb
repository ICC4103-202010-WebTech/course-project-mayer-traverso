class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :user
      t.references :date_event

      t.timestamps
    end
  end
end
