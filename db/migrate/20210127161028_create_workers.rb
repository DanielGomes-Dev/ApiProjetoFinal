class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
