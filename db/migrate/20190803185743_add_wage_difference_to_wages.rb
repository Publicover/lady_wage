class AddWageDifferenceToWages < ActiveRecord::Migration[5.2]
  def change
    add_column :wages, :wage_difference, :integer
  end
end
