class AddInformationToUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users_tables, :first_name, :string
    add_column :users_tables, :last_name, :string
    add_column :users_tables, :description, :text
    add_column :users_tables, :avatar, :string
  end
end
