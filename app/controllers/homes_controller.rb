class HomesController < ApplicationController

  GOOGLE_API_KEY = ENV["API_KEY"]

  def top
    @onsen = Onsen.first
    # マーカーを半径200km圏内で取得表示する
    @onsens = Onsen.where(latitude: (@onsen.latitude - 2)..(@onsen.latitude + 2), longitude: (@onsen.longitude - 2)..(@onsen.longitude + 2))
    gon.onsens = @onsens
  end

end
