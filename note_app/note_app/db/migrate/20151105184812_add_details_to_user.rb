class AddDetailsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :fname, :string
  	add_column :users, :lname, :string
  	add_column :users, :user_name, :string
  end
end
