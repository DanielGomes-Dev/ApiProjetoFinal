class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nationality
      t.string :county
      t.string :rg
      t.string :cpf
      t.string :email
      t.date :birthdate
      t.integer :role

      t.timestamps
    end
  end
end
