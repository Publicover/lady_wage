class AddManWageToWages < ActiveRecord::Migration[5.2]
  def change
    add_column :wages, :man_wage, :integer
  end
end
