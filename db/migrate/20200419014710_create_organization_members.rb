class CreateOrganizationMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_members do |t|
      t.string :user_role
      t.references :user
      t.references :organization

      t.timestamps
    end
  end
end
