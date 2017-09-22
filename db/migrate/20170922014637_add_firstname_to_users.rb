class AddFirstnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string



    add_index :users, :first_name
    add_index :users, :last_name
    add_index :users, :username


  end
end
