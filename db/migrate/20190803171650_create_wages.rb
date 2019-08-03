class CreateWages < ActiveRecord::Migration[5.2]
  def change
    create_table :wages do |t|
      t.string :annual_wage

      t.timestamps
    end
  end
end
