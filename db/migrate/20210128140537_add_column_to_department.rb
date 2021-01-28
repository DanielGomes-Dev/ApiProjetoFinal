class AddColumnToDepartment < ActiveRecord::Migration[6.1]
  def change
    add_reference :departments, :coordinator, null: false, foreign_key: true
  end
end
