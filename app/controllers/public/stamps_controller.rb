class Public::StampsController < ApplicationController
  
  def create
    onsen = Onsen.find(params[:onsen_id])
    stamp = current_user.stamps.new(onsen_id: onsen.id)
    stamp.save
    redirect_to public_onsen_path(onsen.id)
  end

  def destroy
    onsen = Onsen.find(params[:onsen_id])
    stamp = current_user.stamps.find_by(onsen_id: onsen.id)
    stamp.destroy
    redirect_to public_onsen_path(onsen.id)
  end
end
