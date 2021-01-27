class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|
      t.float :grade
      t.references :student, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
