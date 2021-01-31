class AddRoomToClassroom < ActiveRecord::Migration[6.1]
  def change
    add_column :classrooms, :room, :integer
  end
end
