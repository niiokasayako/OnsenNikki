class HomesController < ApplicationController

  GOOGLE_API_KEY = ENV["API_KEY"]

  def top
    @onsen = Onsen.first
    # マーカーを半径10km圏内で取得表示する
    @onsens = Onsen.where(latitude: (@onsen.latitude - 0.05)..(@onsen.latitude + 0.05), longitude: (@onsen.longitude - 0.05)..(@onsen.longitude + 0.05))
    gon.onsens = @onsens
  end

end
