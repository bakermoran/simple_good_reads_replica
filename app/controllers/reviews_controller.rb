class ReviewsController < ApplicationController
    def show
        @review = Review.find(params[:id])
        @book = @review.book
        @user = @review.user
    end
end
