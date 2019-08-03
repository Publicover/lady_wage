class Wage < ApplicationRecord
  before_save :set_annual_total, :set_man_wage, :set_wage_difference,
    :set_difference_per_year

  private

  def set_annual_total
    self.assign_attributes(annual_total: (self.project_rate * self.projects_per_year))
  end

  def set_man_wage
    self.assign_attributes(man_wage: (self.project_rate * (100.00/79.00).round(2)))
  end

  def set_wage_difference
    self.assign_attributes(wage_difference: (self.man_wage - self.project_rate))
  end

  def set_difference_per_year
    self.assign_attributes(difference_per_year: (self.wage_difference * self.projects_per_year))
  end
end
