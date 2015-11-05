class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :name
    	t.text :description
    	t.boolean :status
    	t.belongs_to :project
    	t.belongs_to :user

      t.timestamps null: false
    end
  end
end
