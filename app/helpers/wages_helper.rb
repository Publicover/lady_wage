module WagesHelper

  # def man_wage(number)
  #   (number * (100.00/79.00)).round(2)
  # end

  def wage_difference_sum(number)
    number_to_currency(man_wage(number) - number)
  end

  # def show_difference(wage, lady_wage)
  #   wage - lady_wage
  # end
end
