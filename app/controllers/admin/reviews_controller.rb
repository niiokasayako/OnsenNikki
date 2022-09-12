class Admin::ReviewsController < ApplicationController
  def show
     @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end
  
  def update
    @review = Review.find(params[:id])
    @review.update
    redirect_to admin_onsen_reviews_path
  end
  
  private

  def onsen_params
    params.require(:onsen).permit(:information_id, :name, :image, :address, :opening_hours, :price, :spring_quality)
  end

end
