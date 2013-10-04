class MergeNameFieldsInEmployees < ActiveRecord::Migration
  def up
    remove_column :employees, :first_name
    remove_column :employees, :last_name
    add_column :employees, :name, :string
  end

  def down
    remove_column :employees, :name
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string
  end
end
