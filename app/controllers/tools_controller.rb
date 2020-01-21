class ToolsController < ApplicationController
    before_action :set_tool, only: [:show, :edit, :update, :destroy]
    before_action :current_user

  def index
    @tools = Tool.all
  end

  def show
    if !logged_in?
      redirect_to '/'
    else
      render :index
    end
  end

  def new
    @tool = Tool.new
  end

  def edit
    if !logged_in?
      redirect_to '/'
    else
      render :edit
  end
end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      render :show
    else
      render :new
    end
 end

  def update
      if @tool.update(tool_params)
        redirect_to @tool
      else
        render :edit
    end
  end

  # DELETE @tools/1
  # DELETE @tools/1.json
  def destroy
    @tool.destroy
     redirect_to tools_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tool
      @tool = Tool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tool_params
      params.require(:tool).permit(:id, :name, :user_id, :cow_id, :field_id, :expense_id)
    end

end
