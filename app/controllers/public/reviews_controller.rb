class Public::ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
   @review = Review.new
   @review.user_id = current_user.id
   @review.save
   redirect_to public_onsen_path(@onsen.id)
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to public_review_path(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to public_users_my_page_path
  end

  private

  def review_params
    params.require(:review).permit(:review, :rate, :user_id, :onsen_id)
  end

end
