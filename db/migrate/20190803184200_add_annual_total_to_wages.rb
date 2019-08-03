class AddAnnualTotalToWages < ActiveRecord::Migration[5.2]
  def change
    add_column :wages, :annual_total, :float
  end
end
