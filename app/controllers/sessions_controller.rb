class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(user_name: params[:session][:user_name])
        if user && authenticate(user, params[:session][:password])
            log_in user
            redirect_to user
        else
            flash[:danger] = 'Invalid user_name/password combination'
            render 'new'
        end
    end

    def destroy
        log_out current_user
        redirect_to root_url
    end

    private

    def authenticate(user, password)
        if password == user.password
            return true
        else
            return false
        end
    end
end
