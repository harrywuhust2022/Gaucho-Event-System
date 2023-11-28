class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to main_path, notice: "Successfully created account!"
        else
            render :new, notice: "Invalid email or password!"
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
end
