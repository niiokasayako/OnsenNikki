class Public::OnsensController < ApplicationController
  def index
    @onsens = Onsen.all
  end

  def show
     @onsen = Onsen.find(params[:id])
  end
end
