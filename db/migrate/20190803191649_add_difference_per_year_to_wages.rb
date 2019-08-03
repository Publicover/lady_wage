class AddDifferencePerYearToWages < ActiveRecord::Migration[5.2]
  def change
    add_column :wages, :difference_per_year, :integer
  end
end
