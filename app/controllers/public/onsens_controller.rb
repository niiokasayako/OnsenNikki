class Public::OnsensController < ApplicationController
  def index
    @onsens = Onsen.all
  end

  def show
    @onsen = Onsen.find(params[:id])
  end

  def search
    @onsens = Onsen.search(params[:address],params[:informations])
    @keyword = params[:keyword]
    render "index"
  end

  private


  def onsen_params
    params.require(:onsen).permit(:name, :address, :opening_hours, :price, :spring_quality, information_ids: [])
  end

  def keyword_params
    params.permit( :address, informations: [] )
  end
end
