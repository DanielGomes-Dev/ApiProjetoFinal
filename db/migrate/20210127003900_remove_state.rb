class RemoveState < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :state, :string
  end
end
