class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string :name
    	t.string :password_digest
      t.string :description
      t.string :logo
      t.string :introduction_video

      t.timestamps null: false
      t.string :email, null: false
    end

    add_index :companies, :email
  end
end
