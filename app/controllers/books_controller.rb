class BooksController < ApplicationController
    before_action :logged_in_user

    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
        @reviews = @book.reviews
    end

    def edit
        @book = Book.find(params[:id])
        @author = @book.author
    end

    def update
        @book = Book.find(params[:id])
        @author = @book.author
        if @book.save
            @book.update(title: params[:book][:title],
                         description: params[:book][:description],
                         publisher: params[:book][:publisher],
                         year_published: params[:book][:year_published]
                         )
            redirect_to @book
        else
            render 'edit'
        end
    end

    private

    def book_params
        params.require(:book).permit(:title, :description, :publisher, :year_published, :author_id)
    end
end
