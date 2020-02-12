class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  def index
    if params[:cow_id]
      @cow = Cow.find_by(id: params[:cow_id])
      if @cow.nil?
        redirect_to cows_path, notice: "Cow not found"
      else
        @fields = @user.fields
        #cows.fields?
      end
    else
      @fields = Field.all
    end
  end

  def show
    if params[:cow_id]
      @cow = Cow.find_by(id: params[:cow_id])
      @field = @cow.fields.find_by(id: params[:id])
      if @field.nil?
        redirect_to user_fields_path(@user), notice: "Field not found"
      end
    else
      @field = Field.find(params[:id])
    end
  end

  def new
    @field = Field.new
  end

  def edit
  end

  def create
    @field = Field.new(field_params)
    #binding.pry
    if @field.save
      redirect_to @field
    else
      render :new
    end
  end

  def update
    if @field.update(field_params)
      redirect_to @field
    else
      render :edit
    end
  end

  def destroy
    @field.destroy
    redirect_to fields_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_field
    @field = Field.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def field_params
    params.require(:field).permit(:name, :description, :acreage, :crop, :moisture, :latitude, :longitude, :cow_id, :bushel, :crop_weight_lb, :tool_id)
  end
end
