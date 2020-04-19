class CreateCommentOfComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_of_comments do |t|
      t.string :text
      t.references :comment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
