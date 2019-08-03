class RenameAnnualWageInWages < ActiveRecord::Migration[5.2]
  def change
    rename_column :wages, :annual_wage, :project_rate
  end
end
