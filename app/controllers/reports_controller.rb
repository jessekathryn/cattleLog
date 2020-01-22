class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?


  def index
    @reports = Report.all
  end


  def show
  end

  def new
    @report = Report.new
  end

  def edit
  end

  def create
    @report = Report.new(report_params)

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
      params.require(:report).permit(:report_name, :cow_id, :tool_id, :field_id, :user_id, :expense_id, cow_ids:[], cows_attributes: [:name], field_ids:[], fields_attributes: [:name])
    end
end
