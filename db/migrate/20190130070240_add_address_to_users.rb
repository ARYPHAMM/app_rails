class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :address,:text
  	add_column :users, :created_at,:datetime
  	add_column :users, :update_at,:datetime
  end
end
