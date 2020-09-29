class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @reviews = @user.reviews
    end

    def new
        @new_user = User.new
    end

    def create
        @new_user = User.new(user_params)
        if @new_user.save
            log_in @new_user
            remember @new_user
            flash[:success] = "Welcome to Goodreads!"
            redirect_to @new_user
        else
            render 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password, :password_confirmation)
    end
end
