class Admin::InformationsController < ApplicationController

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      flash[:notice] = "温泉情報を作成しました。"
      redirect_to admin_informations_path
    else
      @informations = Information.page(params[:page]).per(10)
      render :index
    end
  end

  def index
    @information = Information.new
    @informations = Information.page(params[:page]).per(10)
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
     flash[:notice] = "温泉情報を更新しました。"
      redirect_to admin_informations_path
    else
      render :edit
    end
  end

  #施設情報データのストロングパラメータ
  private

  def information_params
    params.require(:information).permit(:name)
  end
end
