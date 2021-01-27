class ChangeSchoolYearIdFromSubject < ActiveRecord::Migration[6.1]
  def change
    remove_column :subjects, :school_year_id, :integer
    add_column :subjects, :semester, :integer
  end
end
