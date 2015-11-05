class CreateJoinTableProjectsUsers < ActiveRecord::Migration
  def change
  	create_join_table :projects, :users do |t|
    	t.integer :projects_id
      t.integer :users_id
    end
  end
end
