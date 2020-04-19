class CreateOrganizationEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_events do |t|
      t.references :organization
      t.references :event

      t.timestamps
    end
  end
end
