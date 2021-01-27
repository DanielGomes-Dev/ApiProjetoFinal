class CreateCanLearns < ActiveRecord::Migration[6.1]
  def change
    create_table :can_learns do |t|
      t.references :student, null: false, foreign_key: true
      t.references :courses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
