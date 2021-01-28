class AddCoordinatorToCourse < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :coordinator, null: false, foreign_key: true
  end
end
