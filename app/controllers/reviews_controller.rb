class ReviewsController < ApplicationController
    before_action :logged_in_user
    before_action :correct_user, only: [:edit, :update, :destroy]

    def index
        @reviews = Review.paginate(page: params[:page], per_page: 10)
    end

    def show
        @review = Review.find(params[:id])
        @book = @review.book
        @user = @review.user
    end

    def new
        @new_review = Review.new
    end

    def create
        @new_review = Review.new(review_params)
        if @new_review.save
            redirect_to @new_review
        else
            render 'new'
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        if @review.save
            @review.update(review_text: params[:review][:review_text], rating: params[:review][:rating])
            redirect_to @review
        else
            render 'edit'
        end
    end

    private

    def review_params
        params.require(:review).permit(:review_text, :rating, :book_id)
    end
end
