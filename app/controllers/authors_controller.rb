class AuthorsController < ApplicationController
    before_action :logged_in_user

    def index
        @authors = Author.paginate(page: params[:page], per_page: 10)
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

    def edit
        @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])
        if @author.save
            @author.update(first_name: params[:author][:first_name], last_name: params[:author][:last_name], bio: params[:author][:bio])
            redirect_to @author
        else
            render 'edit'
        end
    end

    private

    def author_params
        params.require(:author).permit(:first_name, :last_name, :bio)
    end
end

