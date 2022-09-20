class Public::HomesController < ApplicationController
  
  GOOGLE_API_KEY = ENV["API_KEY"]
  
  def top
    @onsens = Onsen.all
    gon.onsens = Onsen.all
  end
end
