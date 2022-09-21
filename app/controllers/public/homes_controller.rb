class Public::HomesController < ApplicationController

  GOOGLE_API_KEY = ENV["API_KEY"]

  def top
    # @onsens = Onsen.all
    # gon.onsens = Onsen.all
    # @onsen = Onsen.all.shuffle.first
    @onsen = Onsen.last
    @onsens = Onsen.where(latitude: (@onsen.latitude - 1)..(@onsen.latitude + 1), longitude: (@onsen.longitude - 1)..(@onsen.longitude + 1))
    gon.onsens = @onsens
  end
end
