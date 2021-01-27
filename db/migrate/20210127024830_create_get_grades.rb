class CreateGetGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :get_grades do |t|
      t.references :grade, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
