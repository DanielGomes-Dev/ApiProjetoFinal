class CreateCanLectures < ActiveRecord::Migration[6.1]
  def change
    create_table :can_lectures do |t|
      t.references :professor, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
