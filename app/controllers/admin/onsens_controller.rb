class Admin::OnsensController < ApplicationController
  def new
   @onsen = Onsen.new
  end

  def show
  end

  def edit
  end
  
  private

  def onsen_params
    params.require(:onsen).permit(:information_id, :name, :image, :address, :opening_hours, :price, :spring_quality)
  end

end
