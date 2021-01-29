class AddComlumRegistrationToProfessor < ActiveRecord::Migration[6.1]
  def change
    add_column :professors, :registration, :string
  end
end
