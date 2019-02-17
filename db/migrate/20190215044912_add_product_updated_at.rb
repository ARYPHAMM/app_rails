class AddProductUpdatedAt < ActiveRecord::Migration[5.2]
  def change
  	add_column :products,:updated_at,:datetime
  end
end
