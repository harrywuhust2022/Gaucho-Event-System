class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]
  def index
    # @users = User.all
    @users = User.page(params[:page])
  end
  def show
    # @user = User.find(params[:id])
    @created_events = @user.created_events.page(params[:page]).per(2)
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path, status: :see_other
  end
  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
    def set_user
      @user = User.find(params[:id])
    end

    def check_user
      unless current_user == @user
        redirect_to root_path, alert: "You are not authorized to perform this action."
      end
    end
end
