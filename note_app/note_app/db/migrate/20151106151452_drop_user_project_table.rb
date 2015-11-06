class DropUserProjectTable < ActiveRecord::Migration
  def change
  	drop_table :projects_users
  end
end
