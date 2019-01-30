class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.string :username
    t.text   :email
    t.text   :address
    t.datetime :created_at
    t.datetime :update_at
    end
  end
end
