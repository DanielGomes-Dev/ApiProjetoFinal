class CreateLaunchGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :launch_grades do |t|
      t.references :professor, null: false, foreign_key: true
      t.references :grade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
