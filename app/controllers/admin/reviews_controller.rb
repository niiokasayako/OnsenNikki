class Admin::ReviewsController < ApplicationController
  def show
     @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end
  
  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to admin_onsen_review_path(@review.onsen, @review.id)
  end
  
  private

  def review_params
    params.require(:review).permit(:review, :rate, :user_id, :onsen_id)
  end

end
  
