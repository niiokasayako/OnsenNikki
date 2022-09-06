class Admin::HomesController < ApplicationController
  def top
   @onsens = Onsen.find(params[:id])
  end
end
