class WelcomeController < ApplicationController
    def index
    end

    def create
    end

    def sign_up
        redirect_to sign_up_path
    end

    def sign_in
        redirect_to sign_in_path
    end

end
