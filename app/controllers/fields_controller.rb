class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit, :update, :destroy]
  before_action :current_user


  def index
    @fields = Field.all
  end


  def show
  end

  def new
    @field = Field.new
  end

  def edit
  end

  def create
    @field = Field.new(field_params)

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
  end


  def destroy
    @field.destroy
      redirect_to fields_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field
      @field = Field.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_params
      params.require(:field).permit(:field_name, :acreage, :crop, :coordinates, :user_id)
    end
end
