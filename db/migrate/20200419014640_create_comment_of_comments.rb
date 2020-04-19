class CreateCommentOfComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_of_comments do |t|
      t.string :text
      t.references :comment
      t.references :user

      t.timestamps
    end
  end
end
