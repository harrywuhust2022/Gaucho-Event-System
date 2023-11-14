class EventsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @event = @user.created_events.build
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
end
