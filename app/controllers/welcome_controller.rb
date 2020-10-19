class WelcomeController < ApplicationController
    def index
        if logged_in_user
            redirect_to reviews_path
        end
    end
end
