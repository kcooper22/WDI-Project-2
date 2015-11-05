class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :projects, :tasks do |t|
    	t.integer :project_id
      t.integer :task_id
    end
  end
end
