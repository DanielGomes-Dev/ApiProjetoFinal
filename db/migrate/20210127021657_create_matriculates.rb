class CreateMatriculates < ActiveRecord::Migration[6.1]
  def change
    create_table :matriculates do |t|
      t.references :student, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
