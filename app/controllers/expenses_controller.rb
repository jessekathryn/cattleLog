class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  def index
    @expenses = Expense.all
  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def edit
  end

  def create
    @expense = Expense.new(expense_params)
      if 
        @expense.save
        redirect_to @expense
      else
        render :new 
    end
  end

  def update
      if @expense.update(expense_params)
        redirect_to @expense, notice: 'Expense was successfully updated.'
      else
        render :edit 
      end
  end

  def destroy
    @expense.destroy
    redirect_to expenses_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:expense_name, :truck, :chemicals, :conservation, :depreciation, :employees, :feed, :freight, :gas, :insurance, :interest, :mortgage, :rent, :repais, :seeds, :storage, :supplies, :taxes, :vet, :tools, :fencing_land, :calf, :dues, :misc_labor, :professional_fees, :user_id, :field_id, :cow_id)
    end
end
