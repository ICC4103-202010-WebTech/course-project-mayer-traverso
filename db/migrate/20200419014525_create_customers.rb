class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :email
      t.string :phone
      t.string :password
      t.bool :primary_role

      t.timestamps
    end
  end
end
