class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :parent_comment
      t.integer :project_id
      t.integer :company_id
      t.integer :user_id
      t.integer :individual_id

      t.timestamps null: false
    end
  end
end
