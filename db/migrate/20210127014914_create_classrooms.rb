class CreateClassrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :code
      t.date :calendar
      t.string :subject_class
      t.integer :quantity
      t.references :subject, null: false, foreign_key: true
      t.references :professor, null: false, foreign_key: true
      t.references :school_year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
