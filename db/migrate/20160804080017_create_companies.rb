class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :logo
      t.string :introduction_video
      t.string :link
      t.string :merchant_id
      t.string :email
      t.string :contact_numbers

      t.timestamps null: false
    end
  end
end
