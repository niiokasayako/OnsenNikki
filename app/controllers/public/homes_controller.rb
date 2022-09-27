class Public::HomesController < ApplicationController

  GOOGLE_API_KEY = ENV["API_KEY"]

  def top
    @onsen = Onsen.first
    # マーカーを半径10km圏内で取得表示する
    @onsens = Onsen.where(latitude: (@onsen.latitude - 0.1)..(@onsen.latitude + 0.1), longitude: (@onsen.longitude - 0.1)..(@onsen.longitude + 0.1))
    gon.onsens = @onsens
  end
end
