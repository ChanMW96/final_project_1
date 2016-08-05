class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :description
      t.string :required_talents
      t.integer :company_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
