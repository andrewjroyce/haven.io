class AddToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :lgbt, :boolean
    add_column :users, :gender, :string
    change_column :users, :immigrant, :string
  end
end
