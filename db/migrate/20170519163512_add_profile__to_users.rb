class AddProfileToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :profession, :string
    add_column :users, :marital_status, :string
    add_column :users, :age, :number
    add_column :users, :hiv, :boolean
    add_column :users, :veteran, :boolean
    add_column :users, :immigrant, :string
  end
end