class ReviewsController < ApplicationController
    before_action :logged_in_user

    def index
        @reviews = Review.paginate(page: params[:page], per_page: 10)
    end

    def show
        @review = Review.find(params[:id])
        @book = @review.book
        @user = @review.user
    end
end
