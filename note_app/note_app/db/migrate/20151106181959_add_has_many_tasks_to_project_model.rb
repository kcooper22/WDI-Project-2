class AddHasManyTasksToProjectModel < ActiveRecord::Migration
  def change
  	remove_column :tasks, :project_id

  	add_reference :tasks, :project, index: true 
  end
end
