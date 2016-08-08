class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :name
      t.string :password_digest
      t.string :email, null: false
    end

    add_index :individuals, :email
  end
end
