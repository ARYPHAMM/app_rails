class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :decsription
      t.datetime :dayinput
    end
  end
end
