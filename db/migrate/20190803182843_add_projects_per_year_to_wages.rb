class AddProjectsPerYearToWages < ActiveRecord::Migration[5.2]
  def change
    add_column :wages, :projects_per_year, :integer
  end
end
