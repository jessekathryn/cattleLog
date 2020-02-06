class CowsController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  def index
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      if @user.nil?
        redirect_to users_path, notice: "User not found"
      else
        @cows = @user.cows
      end
    else
      @cows = Cow.all
    end
  end

  def show
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @cow = @user.cows.find_by(id: params[:id])
      if @cow.nil?
        redirect_to user_cows_path(@user), notice: "Cow not found"
      end
    else
      @cow = Cow.find(params[:id])
    end
  end

  def new
    @cow = Cow.new
  end

  def edit
  end

  def create
    @cow = Cow.new(cow_params)
    if @cow.save
      redirect_to @cow
    else
      render :new
    end
  end

  def update
    @cow = Cow.find(params[:id])
    if @cow.update(cow_params)
      redirect_to @cow, notice: "Cow was successfully updated."
    else
      render :new
    end
  end

  def destroy
    @cow = Cow.find_by(:id => params[:id])
    @cow.destroy
    redirect_to cows_url
  end

  private

  def set_cow
    @cow = Cow.find(params[:id])
  end

  def cow_params
    params.require(:cow).permit(:name, :tag_number, :status, :age, :days, :birthdate, :weight, :health, :color, :user_id, :notes, :shots, :history, :field_name, :pregnant, :calving_date, :pregnancy_date)
  end
end
