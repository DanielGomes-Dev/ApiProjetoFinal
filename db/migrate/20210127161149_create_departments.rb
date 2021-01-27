class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :knowledge_area
      t.integer :code
      t.string :campus

      t.timestamps
    end
  end
end
