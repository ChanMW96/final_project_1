class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.integer :amount
      t.integer :project_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
