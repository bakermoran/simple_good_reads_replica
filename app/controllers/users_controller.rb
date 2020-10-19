class UsersController < ApplicationController
    before_action :logged_in_user
    before_action :correct_user, only: [:edit, :update]

    def index
        @users = User.paginate(page: params[:page], per_page: 10)
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

    def edit
        @new_user = User.find(params[:id])
    end

    def update
        @new_user = User.find(params[:id])
        if @new_user.save
            @new_user.update(first_name: params[:user][:first_name], last_name: params[:user][:last_name])
            redirect_to @new_user
        else
            render 'edit'
        end
    end

    private

    def correct_user
        @user = User.find(params[:id])
        redirect_to(current_user) unless current_user?(@user)
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password, :password_confirmation)
    end
end
