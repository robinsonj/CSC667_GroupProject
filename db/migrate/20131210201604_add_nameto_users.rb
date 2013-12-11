class AddNametoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :contact_number, :string
  	add_column :donations, :user_id, :integer
  	add_column :events, :user_id, :integer
  end
end
