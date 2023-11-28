class SessionController < ApplicationController
    def new
    end

    def create
        # user = User.find(email: params[:email])
        user = User.find(params[:id])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to main_path, notice: "logged in successfully!"
        else
            flash[:alert] = "Invalid email or password!"
            render :new
        end
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged Out!"
    end
end
