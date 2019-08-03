class ChangeAnnualSalaryToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :wages, :annual_wage, :integer
  end
end
