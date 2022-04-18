class DesignersController < ApplicationController
  def index
    @designers = Designer.all
  end

  def new
      @designer = Designer.new

  end

  def create
    designer = Designer.create designer_params
    @current_user.designer << designer
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      designer.image = req["public_id"]
      designer.save
    end

    redirect_to root_path
  end

  def edit
    @designer = Designer.find params[:id]
  end

  def update
    designer = Designer.find params[:id]
    designer.update designer_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      designer.image = req["public_id"]
      designer.save
    end
    redirect_to designer
  end

  def show
    @designer = Designer.find params[:id]
  end

  def destroy
    designer = Designer.find params[:id]
    designer.destroy
    redirect_to designers_path
  end

  private
  def designer_params 
    params.require(:designer).permit(:name, :hireyear, :dob, :email, :phone, :address, :award)
  end
end
