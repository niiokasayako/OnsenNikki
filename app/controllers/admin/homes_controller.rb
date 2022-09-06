class Admin::HomesController < ApplicationController
  def top
   @onsens = Onsen.all
  end
end
