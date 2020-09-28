class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
        @book = @review.book
        @user = @review.user
    end
end
