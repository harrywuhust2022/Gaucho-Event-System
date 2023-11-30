class MainController < ApplicationController
    def index
        @users = User.all
        # if session[:user_id]
        #     @user = User.find(session[:user_id])
        # end        
    end
end
