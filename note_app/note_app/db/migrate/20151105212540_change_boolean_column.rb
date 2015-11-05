class ChangeBooleanColumn < ActiveRecord::Migration
  def change
  	change_column :projects, :status, :boolean, :default => false
  	change_column :tasks, :status, :boolean, :default => false

  end
end
