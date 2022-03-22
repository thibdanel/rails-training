class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @casque = Casque.find(params[:casque_id])
    @casques = Casque.all
  end


  def create
    @casque = Casque.find(params[:casque_id])
    @review = Review.new(params_review)
    @review.casque = @casque

    if @review.save
      redirect_to casque_path(@casque), created: 'Successfull created'
    else
      render :new
    end

  end


  def params_review
    params.require(:review).permit(:content, :rating)
  end
end
