class CreateRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :requirements do |t|
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
