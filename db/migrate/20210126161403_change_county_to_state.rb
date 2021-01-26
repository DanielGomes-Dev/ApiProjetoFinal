class ChangeCountyToState < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :county, :string
    add_column :users, :state, :string
  end
end
