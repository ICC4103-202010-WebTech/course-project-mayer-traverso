class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :text
      t.datetime :date
      t.references :user
      t.timestamps
    end
  end
end
