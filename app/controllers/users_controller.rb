class UsersController < ApplicationController
    before_action :logged_in_user, only: [:edit, :update, :index, :show, :destroy]
    before_action :correct_user, only: [:edit, :update]
    before_action :admin_user, only: :destroy

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
            @new_user.update_attributes(user_params)
            flash[:success] = "Profile updated"
            redirect_to @new_user
        else
            render 'edit'
        end
    end

    def destroy
        user = User.find(params[:id])
        reviews = user.reviews
        reviews.destroy_all
        user.destroy
        flash[:success] = "User deleted"
        redirect_to users_url
      end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :password, :password_confirmation)
    end
end
