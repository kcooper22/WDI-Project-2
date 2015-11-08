class CreateJoinTableUserProjects < ActiveRecord::Migration
  def change
  	drop_table :projects_users
  	
  	create_join_table :projects, :users do |t|
    	t.integer :project_id
    	t.integer :user_id
    end
  end
end
