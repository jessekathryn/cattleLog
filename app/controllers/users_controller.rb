class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in

  def index
  #  if !is_admin?
  #     render :home
  #  else
    @users = User.all
  end
#end

  def show
    if !logged_in?
      redirect_to '/'
    else
      render :home
    end
  end

  def new
    @user = User.new
  end

  def edit
    if !logged_in?
      redirect_to '/'
    else
      render :edit
  end
end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :home, status: :created, location: @user }
      else
        format.html { render :new, location: @welcome}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      if @user.update(user_params)
        redirect_to @user
      else
        render :edit
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find_by(params[:id])
    @user.destroy
     redirect_to users_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:auth_hash, :username, :email, :password, :password_digest, :cows, :fields, :expenses, :tools)
    end
  end
