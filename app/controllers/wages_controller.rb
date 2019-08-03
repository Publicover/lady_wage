class WagesController < ApplicationController
  before_action :set_wage, only: [:show, :edit, :update, :destroy]

  def index
    @wages = Wage.all
  end

  def show
  end

  def new
    @wage = Wage.new
  end

  def edit
  end

  def create
    @wage = Wage.new(wage_params)

    if @wage.save
      redirect_to wage_path(@wage), notice: 'Thanks for sharing.'
    else
      render 'new', notice: 'Something went wrong'
    end
  end

  def update
    if @wage.update(wage_params)
      redirect_to @wage
    else
      render 'edit'
    end
  end

  def destroy
    @wage.destroy
    redirect_to wages_path
  end

  private

  def set_wage
    @wage = Wage.find(params[:id])
  end

  def wage_params
    params.require(:wage).permit(:profession, :annual_wage, :projects_per_year)
  end
end
