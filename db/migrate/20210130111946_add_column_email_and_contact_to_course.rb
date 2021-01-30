class AddColumnEmailAndContactToCourse < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :email, :string
    add_column :courses, :contact, :string
  end
end
