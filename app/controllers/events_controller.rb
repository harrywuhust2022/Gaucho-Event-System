class EventsController < ApplicationController
  before_action :check_user, only: [:new, :create, :destroy]
  def allEvents
    # @events = Event.all
    # @users = User.all

    @events = Event.page(params[:page]).includes(:creator)
  end
  def new
    @user = User.find(params[:user_id])
    @event = @user.created_events.build
  end
  def participated_events
    @user = User.find(params[:id])
    # @events = @user.participating_events
    @events = @user.participating_events.page(params[:page])
  end
  def create
    @user = User.find(params[:user_id])
    @event = @user.created_events.build(event_params)
    if @event.save
      redirect_to @user
    else

      render :new, status: :unprocessable_entity
    end
  end
  def show
    @user = User.find(params[:user_id])
    @event = @user.created_events.find(params[:id])
    @comments = @event.comments.includes(:user)
    @comment = Comment.new



  end
  def destroy
    @user = User.find(params[:user_id])
    @event = @user.created_events.find(params[:id])
    @event.destroy
    redirect_to user_path(@user), status: :see_other
  end
  private
    def event_params
      params.require(:event).permit(:title, :content)
    end
    def check_user
      @user = User.find(params[:user_id])
      unless current_user == @user
        redirect_to root_path, alert: "You are not authorized to perform this action."
      end
    end
end
