class ResponsesController < ApplicationController
  before_action :check_user_authorization, only:[:create]
  def create
    @user = User.find(params[:user_id])
    @invite = @user.received_invites.find(params[:selected_invite])
    @response = @invite.build_response(response_params)
    result = params[:response_value]

    if result == "yes"
      @response.result = true


    else
      @response.result = false

    end



    @response.responser = @invite.guest
    @response.receiver = @invite.host
    @response.event = @invite.event
    #@response.save
    puts @response
    if result == 'yes'
      @invite.status = 1
    else
      @invite.status = -1
    end

    if @response.save
      @invite.save
      if result == 'yes'
        @event = @invite.event
        user_event = UserEvent.new(user: @user, event: @event)
        user_event.save
      end

      redirect_to received_invites_user_path(@user)
    else

      render received_invites_user_path(@user)
    end
  end
  private
  def response_params
    params.require(:response).permit(:message)
  end
  def check_user_authorization
    @user = User.find(params[:user_id])
    unless current_user == @user
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end
end
