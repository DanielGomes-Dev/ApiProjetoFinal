class AddColumnRequerimentToRequirement < ActiveRecord::Migration[6.1]
  def change
    add_column :requirements, :subject_requirement, :integer
  end
end
