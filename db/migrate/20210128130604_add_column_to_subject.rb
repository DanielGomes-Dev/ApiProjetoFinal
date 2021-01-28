class AddColumnToSubject < ActiveRecord::Migration[6.1]
  def change
    add_reference :subjects, :department, null: false, foreign_key: true
  end
end
