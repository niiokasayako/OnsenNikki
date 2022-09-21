class Admin::OnsensController < ApplicationController

  GOOGLE_API_KEY = ENV["API_KEY"]
  def new
   @onsen = Onsen.new
  end

  def create
    @onsen = Onsen.new(onsen_params)
    if @onsen.save
      flash[:notice] = "温泉情報を登録しました"
      redirect_to admin_onsen_path(@onsen.id)
    else
      render :new
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
    @onsen.update(onsen_params)
    redirect_to admin_onsen_path(@onsen)
  end
  
  #温泉データのストロングパラメータ
  private

  def onsen_params
    params.require(:onsen).permit(:name, :address, :opening_hours, :price, :spring_quality, information_ids: [])
  end

end
