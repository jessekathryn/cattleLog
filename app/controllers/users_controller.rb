class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :current_user

  def index
    @users = User.all
  end

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
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user
      else
        redirect_to '/users/new'
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
      params.require(:user).permit(:username, :email, :password, :password_digest, :cows, :fields, :expenses)
    end
end
