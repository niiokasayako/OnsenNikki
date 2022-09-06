class Admin::InformationsController < ApplicationController
  
  def new
    @information = Information.new
  end
  
  def create
    @information = Information.new(information_params)
    if @information.save
      flash[:notice] = "You have created information successfully."
      redirect_to admin_informations_path
    else
      @informations = Information.all
      render :index
    end
  end
  
  def index
    @information = Information.new
    @informations = Information.all
  end

  def edit
    @information = Information.find(params[:id])
  end
  
  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
     flash[:notice] = "You have updated information successfully."
      redirect_to admin_informations_path
    else
      render :edit
    end
  end
  
  #投稿データのストロングパラメータ
  private

  def information_params
    params.require(:information).permit(:name)
  end
end
