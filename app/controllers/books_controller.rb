class BooksController < ApplicationController
    before_action :logged_in_user

    def index
        @books = Book.paginate(page: params[:page], per_page: 10)
    end

    def show
        @book = Book.find(params[:id])
        @reviews = @book.reviews
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        @author = @book.author
        if @book.save
            @book.update(title: params[:book][:title],
                         description: params[:book][:description],
                         publisher: params[:book][:publisher],
                         year_published: params[:book][:year_published],
                         author_id: params[:book][:author_id]
                         )
            redirect_to @book
        else
            render 'edit'
        end
    end

    def new
        @new_book = Book.new
    end

    def create
        @new_book = Book.new(book_params)
        if @new_book.save
            redirect_to @new_book
        else
            render 'new'
        end
    end

    private

    def book_params
        params.require(:book).permit(:title, :description, :publisher, :year_published, :author_id)
    end
end
