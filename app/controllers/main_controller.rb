class MainController < ApplicationController
    def index
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
        @users = User.all
    end
end
