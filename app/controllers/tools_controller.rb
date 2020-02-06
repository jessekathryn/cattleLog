class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  def index
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      if @user.nil?
        redirect_to users_path, notice: "User not found"
      else
        @tools = @user.tools
      end
    else
      @tools = Tool.all
    end
  end

  def show
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @tool = @user.tools.find_by(id: params[:id])
      if @tool.nil?
        redirect_to user_cows_path(@user), notice: "Tool not found"
      end
    else
      @tool = Tool.find(params[:id])
    end
  end

  def new
    @tool = Tool.new
  end

  def edit
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
    params.require(:tool).permit(:id, :name, :user_id, :field_id, :price, :fuel, :tune_up)
  end
end
