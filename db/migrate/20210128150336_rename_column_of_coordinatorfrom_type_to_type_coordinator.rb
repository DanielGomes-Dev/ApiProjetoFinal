class RenameColumnOfCoordinatorfromTypeToTypeCoordinator < ActiveRecord::Migration[6.1]
  def change
    remove_column :coordinators, :type, :string
    add_column :coordinators, :type_coordinator, :integer
  end
end
