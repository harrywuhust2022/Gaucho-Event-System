class SessionsController < ApplicationController
  def new

  end

  def create
    # puts 'email = '+params[]
    @user = User.find_by(email: params[:user][:email])

    if  @user &&  @user.authenticate(params[:user][:password])

      session[:user_id] =  @user.id

      redirect_to  @user
    else
      flash.now[:error] = 'Invalid email or password'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    flash[:success] = 'You have been logged out successfully.'
    redirect_to root_path
  end
  private
    def session_params
      params.require(:user).permit(:email, :password)
    end
end
