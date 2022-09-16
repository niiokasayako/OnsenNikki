class Admin::HomesController < ApplicationController
  def top
   @onsens = Onsen.page(params[:page]).per(20)
  end
end
