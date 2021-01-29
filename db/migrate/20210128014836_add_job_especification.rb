class AddJobEspecification < ActiveRecord::Migration[6.1]
  def change
    add_column :workers, :job, :integer
  end
end
