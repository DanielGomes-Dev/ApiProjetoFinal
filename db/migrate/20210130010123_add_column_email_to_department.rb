class AddColumnEmailToDepartment < ActiveRecord::Migration[6.1]
  def change
    add_column :departments, :email, :string
    add_column :departments, :contact, :string
    remove_column :departments, :code, :string


  end
end
