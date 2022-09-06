class Admin::OnsensController < ApplicationController
  def new
   @onsen = Onsen.new
  end
  
  def create
    @onsen = Onsen.new(onsen_params)
    if @onsen.save
      flash[:notice] = "You have created onnsen successfully."
      redirect_to admin_onsen_path(@onsen.id)
    else
      render :admin_path
    end
  end

  def show
    @onsen = Onsen.find(params[:id])
  end

  def edit
    @onsen = Onsen.find(params[:id])
  end
  
  def update
    @onsen = Onsen.find(params[:id])
    @onsen.update
    redirect_to admin_onsen_path(@onsen)
  end
  
  private

  def onsen_params
    params.require(:onsen).permit(:information_id, :name, :image, :address, :opening_hours, :price, :spring_quality)
  end

end
