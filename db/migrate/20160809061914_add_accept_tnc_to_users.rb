class AddAcceptTncToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :accept_tnc, :boolean
  end
end
