class AddToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lgbt, :boolean
    change_column :users, :immigrant, :string
  end
end
