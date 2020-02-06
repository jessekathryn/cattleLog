class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  def index
    @user = User.find_by(id: params[:user_id])
    @reports = @user.reports
  end

  def show
  end

  def new
    @report = Report.new
  end

  def edit
  end

  def create
    @report = Report.create(report_params)
    @report.update_attribute(:reportable, current_user)
    if @report.save
      redirect_to @report
    else
      render :new
    end
  end

  def update
    if @report.update(report_params)
      redirect_to @report
    else
      render :edit
    end
  end

  def destroy
    @report.destroy
    redirect_to reports_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_report
    @report = Report.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def report_params
    params.require(:report).permit(:name, :date, :content, :cow_id, :tool_id, :field_id, :user_id, :expense_id, cow_ids: [], field_ids: [])
  end
end
