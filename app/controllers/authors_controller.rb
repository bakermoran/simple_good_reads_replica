class AuthorsController < ApplicationController
    def index
        @authors = Author.all
    end

    def show
        @author = Author.find(params[:id])
        @books = @author.books
    end

    def new
        @new_author = Author.new
    end

    def create
        @new_author = Author.new(author_params)
        if @new_author.save
            redirect_to @new_author
        else
            render 'new'
        end
    end

    private

    def author_params
        params.require(:author).permit(:first_name, :last_name, :bio)
    end
end

