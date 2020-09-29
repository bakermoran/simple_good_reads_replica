class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(user_name: params[:session][:user_name.downcase])
        if user && user.authenticate(params[:session][:password])
            log_in user
            remember user
            redirect_to user
        elsif user
            flash.now[:danger] = 'user_name not found'
            render 'new'
        else
            flash.now[:danger] = 'Invalid user_name/password combination'
            render 'new'
        end
    end

    def destroy
        log_out if logged_in?
        redirect_to root_url
    end
end
