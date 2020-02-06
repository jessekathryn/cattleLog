class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  def index
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      if @user.nil?
        redirect_to users_path, notice: "User not found"
      else
        @expenses = @user.expenses
      end
    else
      @expenses = Expense.all
    end
  end

  def show
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @expense = @user.expense.find_by(id: params[:id])
      if @expense.nil?
        redirect_to user_expenses_path(@user), notice: "Expense not found"
      end
    else
      @expense = Expense.find(params[:id])
    end
  end

  def new
    @expense = Expense.new
  end

  def edit
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to @expense
    else
      render :new
    end
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update(expense_params)
      redirect_to @expense, notice: "Expense was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @expense = Expense.find_by(:id => params[:id])
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
    params.require(:expense).permit(:name, :date, :description, :truck, :chemicals, :conservation, :depreciation, :employees, :feed, :freight, :gas, :insurance, :interest, :mortgage, :rent, :repairs, :seeds, :storage, :supplies, :taxes, :vet, :tools, :fencing, :calf, :dues, :misc_labor, :professional_fees, :user_id)
  end
end
