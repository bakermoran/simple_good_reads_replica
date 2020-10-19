class ReviewsController < ApplicationController
    before_action :logged_in_user

    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
        @book = @review.book
        @user = @review.user
    end
end
