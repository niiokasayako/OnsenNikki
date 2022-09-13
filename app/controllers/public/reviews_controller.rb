class Public::ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @onsen = Onsen.find(params[:onsen_id])
    @review = Review.new(review_params)
    @review.rate = params[:review][:rate]
    @review.onsen_id = @onsen.id
    @review.user_id = current_user.id
    @review.save
   redirect_to public_users_my_page_path
  end
  
  def show
    @review = Review.find(params[:id])
    @post_comment = PostComment.new
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to public_onsen_review_path(@review.id)
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
