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
  def keyword_params
    params.permit( :address, informations: [] )
  end
end
