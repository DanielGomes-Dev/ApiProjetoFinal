class AddColumnTypeToCoordinator < ActiveRecord::Migration[6.1]
  def change
    add_column :coordinators, :type, :integer
  end
end
