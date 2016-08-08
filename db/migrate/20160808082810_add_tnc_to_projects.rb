class AddTncToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :accept_tnc, :boolean
  end
end
