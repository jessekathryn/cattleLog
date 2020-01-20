class ToolsController < ApplicationController
    before_action :set_tools, only: [:show, :edit, :update, :destroy]
    before_action :current_user

  def index
    @tools = Tools.all
  end

  def show
    if !logged_in?
      redirect_to '/'
    else
      render :home
    end
  end

  def new
    @tool = Tools.new
  end

  def edit
    if !logged_in?
      redirect_to '/'
    else
      render :edit
  end
end

  def create
    @tool = Tools.new(tool_params)
      if @tool.save
        session[:tool_id] = @tool.id
        redirect_to @tool
      else
        redirect_to '/tools/new'
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
      @tool = Tools.find_by(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tool_params
      params.require(:tool).permit(:user_id, :cow_id, :field_id, :expense_id)
    end

end
