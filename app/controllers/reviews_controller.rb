class ReviewsController < ApplicationController

  before_action :authorize

  def create
      @review = Review.new(description: params[:review][:description], rating: params[:review][:rating], user_id: session[:user_id], product_id: params[:product_id])

      @review.user_id = current_user.id

      if @review.save
      redirect_to product_path (params[:product_id])
      else
      redirect_to product_path (params[:product_id])
      end
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to product_path (params[:product_id])
  end
end
