class CreateBlas < ActiveRecord::Migration[6.1]
  def change
    create_table :blas do |t|

      t.timestamps
    end
  end
end
