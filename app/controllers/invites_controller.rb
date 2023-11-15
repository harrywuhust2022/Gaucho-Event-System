class InvitesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @invites = @user.sent_invites
  end
  def sent_invites
  end
  def received_invites
    @user = User.find(params[:id])
    @invites = @user.received_invites
    @response = Response.new
  end
  def new
    @user = User.find(params[:user_id])
    @selected_event = @user.created_events.find(params[:selected_event])
    @invite = Invite.new



  end
  def create
    @user = User.find(params[:user_id])
    @guest = User.find_by(username: params[:username])
    @selected_event = @user.created_events.find(params[:selected_event])

    if @guest
      if @selected_event.participants.include?(@guest)
        @user_exists = true
        render :new, status: :unprocessable_entity
      else

        @invite = @user.sent_invites.build

        @invite.event = @selected_event
        @invite.guest = @guest
        @invite.status = 0


        if @invite.save
          redirect_to user_invites_path
        else
          render :new, status: :unprocessable_entity
        end
      end
    else
      @user_not_found = true
      render :new, status: :unprocessable_entity
    end
  end
  def destroy
    @user = User.find(params[:user_id])
    @invite = @user.sent_invites.find(params[:id])
    @invite.destroy
    redirect_to user_invites_path(@user), status: :see_other
  end
  def destroy_received_invite
    @user = User.find(params[:user_id])
    @invite = @user.received_invites.find(params[:id])
    @invite.destroy
    redirect_to received_invites_user_path(@user), status: :see_other

  end
  private
   def invite_params
    params.require(:invite).permit(:event)
   end
end
