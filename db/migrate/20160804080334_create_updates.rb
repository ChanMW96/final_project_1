class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :description
      t.integer :project_id
      t.integer :company_id
      t.integer :individual_id

      t.timestamps null: false
    end
  end
end
