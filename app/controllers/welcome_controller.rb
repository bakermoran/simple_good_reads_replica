class WelcomeController < ApplicationController
    def index
        if logged_in?
            redirect_to reviews_path
        end
    end
end
